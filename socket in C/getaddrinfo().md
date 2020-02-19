```C
// includes
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

// function signature
int getaddrinfo(const char *node,  // e.g. "www.example.com" or IP
                const char *service,  // e.g. "http" or port number
                const struct addrinfo *hints,  // pre-filled hint addrinfo
                struct addrinfo **res);  // used to point to the resulting addrinfo linked-list
```
## How to use it?  
fill in a hint `addrinfo` a little bit, and give it to `getaddrinfo()` to get a full linked list of `addrinfo`

  ```C
  // example use of getaddrinfo()
  #include <sys/types.h>
  #include <sys/socket.h>
  #include <netdb.h>
  
  #include <stdio.h>
  
  int status;
  struct addrinfo hints;
  struct addrinfo *servinfo;  // will point to the results
  
  memset(&hints, 0, sizeof hints); // clear hint struct
  
  // fill in hint addrinfo 
  hints.ai_family = AF_UNSPEC;  // don't care IPv4 or IPv6; can also be AF_INET or AF_INET6 if needed
  hints.ai_socktype = SOCK_STREAM; // TCP stream sockets
  hints.ai_flags = AI_PASSIVE;     // fill in my IP for me; do not put this line if wants a specific ip address
  
  // use hint to get addrinfo linked list
  status = getaddrinfo(NULL, "3490", &hints, &servinfo); // fill in your specific ip as the frist param, if needed
  
  // check for getaddrinfo() error
  if (status != 0) {
    printf("Failed to getaddrinfo!");
    exit(1);
  }
  
  // ... 
  
  ```
