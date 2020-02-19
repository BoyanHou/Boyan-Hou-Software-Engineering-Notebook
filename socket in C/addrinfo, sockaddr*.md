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
    - NOTICE: `sockaddr`, `sockaddr_in` pointers can be casted to each other if needed, because they are made to be the same size  
      - BUT `sockaddr_in6` is larger than these!
- `sockaddr_in` for IPv4
  ```C
  // (IPv4 only)
  struct sockaddr_in {
    short int sin_family;  // corresponds to sa_family in sockaddr, should be set to AF_INET
    unsigned short int sin_port;  // port number, MUST be set to Network Byte Order (Big Endian) by using htons()
    struct in_addr     sin_addr;    // IPv4 address
    unsigned char      sin_zero[8]; // should be all 0s by using memset(); Pad the struct so it has the same size as sockaddr
  }
  
  // IPv4 address (a structure for historical reasons)    
  struct in_addr {        
    uint32_t s_addr; // IPv4 address, a 32-bit int (4 bytes)    
  };
  ```
  - NOTE: sin_zero (which is included to pad the structure to the length of a struct `sockaddr`) should be set to all zeros with the function memset().   
  - NOTE: sin_family corresponds to sa_family in a `sockaddr` and should be set to "AF_INET".   
  - NOTE: sin_port must be in Network Byte Order (by using htons()!)  
- `sockaddr_in6` for IPv6  
  ```C
  // (IPv6 only)
  struct sockaddr_in6 {
    u_int16_t sin6_family;   // address family, AF_INET6
    u_int16_t sin6_port;     // port number, Network Byte Order
    u_int32_t sin6_flowinfo; // IPv6 flow information, too advanced to talk about here
    struct in6_addr sin6_addr;  // IPv6 address
    u_int32_t sin6_scope_id; // scope id, too advanced to talk about here
  }
  // IPv6 address
  struct in6_addr {
    unsigned char   s6_addr[16];   // IPv6 address 
  }
  ```
  - NOTE: `sockaddr_in6` is larger than `sockaddr` (or `sockaddr_in4`), so their pointers cannot be casted to each other!   
  - Otherwise, it is very similar to `sockaddr_in4`, refer the above `sockaddr_in4` part for more notices  
- `struct sockaddr_storage` can accomadate both IPv4 or IPv6!
 ```C
 // sockaddr_storage source code
 struct sockaddr_storage {
   sa_family_t  ss_family;  // address family
   
   // all below is padding (to make this struct can accommadate both IPv4 or IPv6),
   // and is implementation specific, ignore it:
   char  __ss_pad1[_SS_PAD1SIZE];
   int64_t  __ss_align;
   char  __ss_pad2[_SS_PAD2SIZE];
 }
 ```
 - they did not simply change `sockaddr` to `sockaddr_storage` for historical reasons.
