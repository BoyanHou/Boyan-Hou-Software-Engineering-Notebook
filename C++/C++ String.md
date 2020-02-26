```C++
#include <string>
```

- int to string: `to_string(int)`
``` C++
// in C++11:
int a = 10;
string str = std::to_string(a);

// otherwise:
int a = 10;
stringstream ss;
ss << a;
string str = ss.str();
```

- get length of string: `length()`, `size()` & `strlen()`  
  There is no difference between `length` & `size()`;   
  However, when you use `strlen()` and if there is a `\0` in the middle of your string, the resulted length will be cut.  
