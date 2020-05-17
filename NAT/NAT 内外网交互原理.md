# NAT 内外网交互原理  
[ref: CSDN：NAT之如何寻找局域网中的主机](https://blog.csdn.net/xitong2012/article/details/22065951)  

> boyan：面对IPv4地址枯竭的问题，当代绝大多数设备都是在局域网中，只拥有内网地址。当访问外网时，就需要用到NAT gateway做地址翻译服务。

- 当一个设备只有局域网IP时，想通过NAT gateway访问外部服务，需要用解决的问题是：  
  - 响应包返回时，怎么在公网上找到该NAT gateway?   
  - 相应包到达该NAT gateway之后，怎么找到请求它的内网IP?

- 当一个包从一个局域网设备发出时，这个包会发到该局域网的 NAT gateway。于此，NAT会做：
  1. 替换源IP：`局域网设备的内网IP` -> `该NAT gateway的公网IP`  
    （为了让响应包 能从公网找到该 NAT gateway）  
  2. 替换源port: 使用NAT gateway所维护的一张 `port<->局域网ip 表`中所记录的，该局域网设备所对应的port number  
    （为了当响应包到达NAT gateway时，通过端口号就能知道该把这个包给哪个局域网ip）  
  3. `目标公网IP:目标公网port` 仍保持不变  


