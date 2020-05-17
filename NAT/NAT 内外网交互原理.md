# NAT 内外网交互原理  
[ref: CSDN：NAT之如何寻找局域网中的主机](https://blog.csdn.net/xitong2012/article/details/22065951)  

> boyan：面对IPv4地址枯竭的问题，当代绝大多数设备都是在局域网中，只拥有内网地址。当访问外网时，就需要用到NAT gateway做地址翻译服务。


## REQUEST: 内网透过 NAT 请求外网
- 当一个包从一个局域网设备发出时，它包含的：
  - 目标地址：`目标公网IP:目标公网port`    
  - 源地址：`该局域网设备的内网IP：该局域网设备的内网port`  
- 这个包会发到该局域网的 NAT gateway。于此，NAT会做：
  1. 将源IP从内网IP替换为该NAT gateway的公网IP  
    （为了使所请求的公网服务 能从公网找到该局域网（NAT gateway））
  2. 

## RESPONSE: 外网透过 NAT 响应内网  
