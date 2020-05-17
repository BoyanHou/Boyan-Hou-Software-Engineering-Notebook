# NAT-T 内网穿透
[ref: 使用Node实现简单的内网穿透](https://juejin.im/post/5deef82de51d455815099880)  
[ref: StackOverflow：How does ngrok work behind a firewall?](https://stackoverflow.com/questions/23395129/how-does-ngrok-work-behind-a-firewall)  
> 目的: 赋予局域网设备公网IP，使其能被从公网访问到   

### Terminologies  
- NAT gateway, NAT网关  
- NAT-T, Network Address Translation-Traversal，内网穿透，NAT穿透  

### Why  
- 现代大多数设备都只有局域网IP，没有公网IP，只能通过接入NAT网关来与外网沟通，而无法被从外部访问到  
  （关于该过程的通讯寻址，详见[NAT 内外网交互原理](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/NAT/NAT%20%E5%86%85%E5%A4%96%E7%BD%91%E4%BA%A4%E4%BA%92%E5%8E%9F%E7%90%86.md)）
- Q：既然NAT网关中维护了一个`局域网设备IP：随机生成port`的表，那么只要知道该NAT网关的公网IP和该表中的port，不就可以从外部访问局域网设备了吗？  
  A：理论上可行，但是大多数情况下，出于安全考虑，网关只允许局域网内设备主动发起的会话，而不允许局域网外主动发起的会话。  
- Q：那NAT-T怎么实现的？  
  A：简单说来，在外网部署一个具有公网IP的服务器，然后局域网内的服务器主动跟它建立通道（这是NAT允许的），此后对该公网IP的请求，即可通过该通道交由内网服务器处理。 详见[StackOverflow：How does ngrok work behind a firewall?](https://stackoverflow.com/questions/23395129/how-does-ngrok-work-behind-a-firewall)    
