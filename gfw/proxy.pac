function FindProxyForURL(url, host) {

    var p = 'PROXY 192.168.1.5:1081';

    if (shExpMatch(host, '*v2ex.com')) return p;
    if (shExpMatch(host, '*google.com')) return p;
    if (shExpMatch(host, '*gmail.com')) return p;
    if (shExpMatch(host, '*google.co.jp')) return p;
    if (shExpMatch(host, '*googleusercontent.com')) return p;
    if (shExpMatch(host, '*googleusercontent.com')) return p;
    if (shExpMatch(host, '*googleapis.com')) return p;
    if (shExpMatch(host, '*github.com')) return p;
    if (shExpMatch(host, '*githubassets.com')) return p;
    if (shExpMatch(host, '*githubusercontent.com')) return p;
    if (shExpMatch(host, '*youtube.com')) return p;
    if (shExpMatch(host, '*inkscape.org')) return p;
    if (shExpMatch(host, '*bootstrapcdn.com')) return p;
    if (shExpMatch(host, '*reddit.com')) return p;
    if (shExpMatch(host, '*openvpn.net')) return p;
    if (shExpMatch(host, '*wikipedia.org')) return p;
    if (shExpMatch(host, '*wikimedia.org')) return p;
    if (shExpMatch(host, '*medium.com')) return p;
    if (shExpMatch(host, '*web.dev')) return p;
    if (shExpMatch(host, '*openai.com')) return p;
    if (shExpMatch(host, '*googleadservices.com')) return p;
    if (shExpMatch(host, '*gstatic.com')) return p;
    if (shExpMatch(host, '*ycombinator.com')) return p;
    if (shExpMatch(host, '*ytimg.com')) return p;
    if (shExpMatch(host, '*ggpht.com')) return p;
    if (shExpMatch(host, '*googlevideo.com')) return p;
    if (shExpMatch(host, '*x.com')) return p;
    if (shExpMatch(host, '*twitter.com')) return p;
    if (shExpMatch(host, '*twimg.com')) return p;
    if (shExpMatch(host, '*hysteria.network')) return p;
    if (shExpMatch(host, '*facebook.com')) return p;
    if (shExpMatch(host, '*instagram.com')) return p;
    if (shExpMatch(host, '*imgur.com')) return p;
    if (shExpMatch(host, '*googlesyndication.com')) return p;
    if (shExpMatch(host, '*googletagmanager.com')) return p;
    if (shExpMatch(host, '*imrworldwide.com')) return p;

    return 'DIRECT';
}
