# NAT 网址转换
> [wiki: NAT](https://en.wikipedia.org/wiki/Network_address_translation): 
Network address translation (NAT) is a method of remapping an IP address space into another by modifying network address information in the IP header of packets while they are in transit across a traffic routing device.
The technique was originally used to avoid the need to assign a new address to every host when a network was moved, or when the upstream Internet service provider was replaced, but could not route the networks address space. 
It has become a popular and essential tool in conserving global address space in the face of IPv4 address exhaustion. 
One Internet-routable IP address of a NAT gateway can be used for an entire private network.  

- 网址转换（NAT）是通过改router包中的IP头信息实现的  
- 最初用来避免网址的改动
- 现在用来缓解IPv4地址枯竭的问题：一个拥有公网IP的NAT gateway可以供一片局域网使用  
  - 其实就是使只有局域网IP的终端可以单向访问外网
