## Hierarchy Overview
- each `struct addrinfo` contains a `struct sockaddr`    
- `struct sockaddr`  
  - `struct sockaddr_in` ("in" for "Internet") to be used with IPv4.  
    - sin_port: the port number
    - `struct in_addr`
      - s_addr: the ip 
  - `struct socketaddr_in6` to be used with IPv6.  
## addrinfo  
  - `addrinfo` stucts are chained as a linked list, each `addrinfo` contains a pointer to the next one.  
  - use `getaddrinfo()` to get addrinfo:  
    fill in a hint `struct addrinfo` a bit, then call `getaddrinfo()` to get the full addrinfo chain.  
  ```C
  // addrinfo source code
  struct addrinfo {
    int ai_flags;     // AI_PASSIVE, AI_CANONNAME, etc.        
    int ai_family;    // AF_INET, AF_INET6, AF_UNSPEC
    int ai_socktype;  // SOCK_STREAM, SOCK_DGRAM 
    int ai_protocol;  // use 0 for "any"
    size_t ai_addrlen;   // size of ai_addr in bytes
    struct sockaddr *ai_addr;  // struct sockaddr_in or _in6        
    char *ai_canonname; // full canonical hostname            
    struct addrinfo *ai_next;      // linked list, next node    
  };
  
  ```
## sockaddr "family"  
- `sockaddr` is a generalized struct and can hold many types of socket information 
  ```C
  // sockaddr source code
  struct sockaddr {
    unsigned short sa_family;  // address family, AF_xxx, e.g.: AF_INET (IPv4) or AF_INET6 (IPv6)      
    char sa_data[14];  // 14 bytes of protocol address    
  }
  ```
  - `sa_data` contains a `destination address` and `port number` for the socket. 
    - This is rather unwieldy since you don’t want to tediously pack the address in the `sa_data` by hand.  
    - So we have `struct sockaddr_in` for IPv4 & `struct sockaddr_in6` for IPv6  
    - NOTICE: `sockaddr`, `sockaddr_in`, `sockaddr_in6` pointers can be casted to each other if needed, because they are made to be the same size  
- `sockaddr_in` for IPv4
  ```C
  // (IPv4 only)
  struct sockaddr_in {
    short int sin_family;  // corresponds to sa_family in sockaddr, should be set to AF_INET
    unsigned short int sin_port;  // port number, MUST be set to Network Byte Order (Big Endian) by using htons()
    struct in_addr     sin_addr;    // ip address
    unsigned char      sin_zero[8]; // should be all 0s by using memset(); Pad the struct so it has the same size as sockaddr
  }
  
  // IPv4 Internet address (a structure for historical reasons)    
  struct in_addr {        
    uint32_t s_addr; // that's a 32-bit int (4 bytes)    
  };
  ```
  - NOTE: sin_zero (which is included to pad the structure to the length of a struct `sockaddr`) should be set to all zeros with the function memset().   
  - NOTE: sin_family corresponds to sa_family in a `sockaddr` and should be set to "AF_INET".   
  - NOTE: sin_port must be in Network Byte Order (by using htons()!)  
- `struct sockaddr_storage` was made later and is bigger than `sockaddr`  
- they did not simply change `sockaddr` to `sockaddr_storage` for historical reasons.


 ```C
 
 int accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen); 
 ```
