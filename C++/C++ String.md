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
  ```C++
  string str = "0123456789";
  str.length(); // == 10;
  str.size();  // == 10;
  ```
  There is no difference between `length` & `size()`;   
  However, when you use `strlen()` and if there is a `\0` in the middle of your string, the resulted length will be cut. 
  
- Concatnate string: 
  ```C++
  // use:
  string strTest(buf,6);
  // instead of:(because string will be cut by '\0')
  string strTest(buf);

  // use:
  strTest.append(buf,6);
  // instead of:(because string will be cut by '\0')
  strTest+=buf;
  ```
