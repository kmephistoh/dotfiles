from datetime import datetime, timedelta
from airflow import DAG
from airflow.providers.standard.operators.bash import BashOperator
from airflow.models import Variable
import json

# 从 Airflow Variable 获取用户列表（JSON 格式字符串）
USERS_JSON = Variable.get("twitter_users", default_var='["nasa"]')
try:
    USERS = json.loads(USERS_JSON)
except json.JSONDecodeError:
    raise ValueError("Variable 'twitter_users' must be a valid JSON array of strings.")

DOWNLOAD_BASE_PATH = Variable.get("twitter_download_path", default_var="~/Pictures/twitter")

default_args = {
    "owner": "data_team",
    "depends_on_past": False,
    "email_on_failure": False,
    "retries": 1,
    "retry_delay": timedelta(minutes=5),
}

with DAG(
    dag_id="download_twitter_multiple_users",
    default_args=default_args,
    description="Download media from multiple Twitter/X users using gallery-dl",
    schedule="@daily",
    start_date=datetime(2025, 1, 1),
    catchup=False,
    tags=["social_media", "twitter", "multi_user"],
) as dag:

    # 动态为每个用户生成任务
    for user in USERS:
        user = user.strip()
        if not user:
            print("no twitter user , set at 'Airflow/admin/variables'")

        #mkdir_cmd = f"mkdir -p {DOWNLOAD_BASE_PATH}/{user}"

        # gallery-dl 命令（增量下载）
        gallery_dl_cmd = (
            f"gallery-dl "
            f"--cookies-from-browser firefox "
            f"--download-archive {DOWNLOAD_BASE_PATH}/{user}/archive.txt "
            f"https://x.com/{user}/media"
        )

        #create_dir = BashOperator(
        #    task_id=f"create_dir_{user}",
        #    bash_command=mkdir_cmd,
        #)

        download_task = BashOperator(
            task_id=f"download_{user}",
            bash_command=gallery_dl_cmd,
        )

        # 设置依赖：先建目录，再下载
        #create_dir >> download_task
