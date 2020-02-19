## Hierarchy Overview
- each `struct addrinfo` contains a `struct sockaddr`    
- `sockaddr`  
  - `sockaddr_in` ("in" for "Internet") to be used with IPv4.  
  - `socketaddr_in6` to be used with IPv6.  
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
    unsigned short sa_family;  // address family, AF_xxx        
    char sa_data[14];  // 14 bytes of protocol address    
  }
  ```
- `struct sockaddr_storage` was made later and is bigger than `sockaddr`  
- they did not simply change `sockaddr` to `sockaddr_storage` for historical reasons.


 ```C
 
 int accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen); 
 ```
