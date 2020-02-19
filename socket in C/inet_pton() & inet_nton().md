- `inet_pton()`: "Presentation TO Network"
  ```C
  // example usage
  struct sockaddr_in sa; // IPv4
  struct sockaddr_in6 sa6; // IPv6
  
  inet_pton(AF_INET, "10.12.110.57", &(sa.sin_addr)); // IPv4
  inet_pton(AF_INET6, "2001:db8:63b3:1::3490", &(sa6.sin6_addr)); // IPv6
  ```
  - used to:  
    convert IPv4(IPv6) addresses from String format into Binary reprensentation,   
    and store into sockaddr_in(sockaddr_in6)  
  - NOTE: the old way of doing this is using `inet_addr()` or `inet_addr()`, these are obslete and don't work with IPv6  
  - NOTE: `inet_pton` returns -1 on error, returns 0 if the address is messedup, so make sure the retun value is `>= 0`  
- `inet_ntop()`: "Network TO Presentation"
  ```C
  // IPv4
  char ip4[INET_ADDRSTRLEN];  // space to hold the IPv4 string
  struct sockaddr_in sa;      // pretend this is loaded with something
  
  // get the binary IPv4 address stored in sa.sin_addr,
  // convert it to String format,
  // store the result in the prepared ip4 buffer
  inet_ntop(AF_INET, &(sa.sin_addr), ip4, INET_ADDRSTRLEN); 
  
  printf("The IPv4 address is: %s\n", ip4);
  ```
  ```C
  // IPv6
  char ip6[INET6_ADDRSTRLEN]; // space to hold the IPv6 string
  struct sockaddr_in6 sa6;    // pretend this is loaded with something
  
  inet_ntop(AF_INET6, &(sa6.sin6_addr), ip6, INET6_ADDRSTRLEN);
  
  printf("The address is: %s\n", ip6);
  ```
  - used to  
    convert IPv4(IPv6) addresses from String format into Binary reprensentation,   
    and store into sockaddr_in(sockaddr_in6)
