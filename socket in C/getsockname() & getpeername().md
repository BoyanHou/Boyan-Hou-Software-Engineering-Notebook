function synopsis:
```C
#include<sys/socket.h>

// get the socket's local side info (sockaddr)
int getsockname(int sockfd, struct sockaddr *localaddr, socklen_t *addrlen);
// get the socket's remote side info (sockaddr)
int getpeername(int sockfd, struct sockaddr *peeraddr, socklen_t *addrlen);
```
- NOTE: both functions return 0 on success; -1 on failure
- NOTE: you can use `getsockname()` before the conncetion has been established
- NOTE: you CANNOT use `getpeername()` before the connection has been established
- This is useful when a socket was not `bind()` to a specific ip & port
