function FindProxyForURL(url, host) {
    // 定义代理服务器配置
    const PROXY = 'PROXY 192.168.1.5:1081';
    const DIRECT = 'DIRECT';
    
    // 扁平化域名列表（移除分组，减少循环层级）
    const proxyDomains = [
        'google.com', 'gmail.com', 'google.co.jp', 'googleusercontent.com', 
        'googleapis.com', 'gstatic.com', 'googlevideo.com', 'googleadservices.com',
        'googlesyndication.com', 'googletagmanager.com',
        
        'facebook.com', 'instagram.com', 'twitter.com', 'x.com', 
        'twimg.com', 'reddit.com', 'imgur.com',
        
        'github.com', 'githubassets.com', 'githubusercontent.com', 'github.io',
        'web.dev', 'medium.com', 'ycombinator.com',
        
        'youtube.com', 'ytimg.com', 'ggpht.com',
        
        'wikipedia.org', 'wikimedia.org',
        
        'openvpn.net', 'hysteria.network',
        
        'v2ex.com', 'inkscape.org', 'bootstrapcdn.com', 
        'imrworldwide.com', 'openai.com'
    ];

    // 本地地址直接连接
    if (isPlainHostName(host) || 
        host === '127.0.0.1' || 
        host === 'localhost') {
        return DIRECT;
    }

    // 使用单循环检查域名（时间复杂度从 O(n*m) 降为 O(n)）
    for (const domain of proxyDomains) {
        if (host.endsWith(domain)) {
	//if (shExpMatch(host, `*${domain}`)) { // 替换为endWith，AI说效率高一点 
            return PROXY;
        }
    }
    
    return DIRECT;
}
