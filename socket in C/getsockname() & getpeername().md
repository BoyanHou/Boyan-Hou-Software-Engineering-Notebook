function synopsis:
```C
#include<sys/socket.h>

// get the socket's local side info (sockaddr)
int getsockname(int sockfd, struct sockaddr *localaddr, socklen_t *addrlen);
// get the socket's remote side info (sockaddr)
int getpeername(int sockfd, struct sockaddr *peeraddr, socklen_t *addrlen);
```
- This is useful when a socket was not `bind()` to a specific ip & port
