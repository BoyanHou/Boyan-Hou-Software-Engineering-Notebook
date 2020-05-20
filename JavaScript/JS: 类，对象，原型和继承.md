# JS: 类，对象，原型和继承  

### JS中的类  
- 原生JS是不存在`class`这个概念的（ES6中加入了`class`语法糖，但本质上属于`寄生混合继承`）  
- 那么JS中的继承又是如何实现的呢？  
  首先要了解的是，JS中的所有`function`都是对象，每一个方法对象都自动包含了一个filed：`prototype`  
  e.g.:  
  ```javascript  
  function MyClass(arg1, arg2) {  // good practice: 方法名用大驼峰，表示这是MyObject类的构造函数  
    this.arg1 = arg1;
    this.arg2 = arg2;
  }  
  ```
  - 此处，名为`MyClass`的方法，因为其本身即为对象，因此这个方法实质上也成为了`MyClass`类的构造函数；  
  - `this`则代表了execution context，即为该对象本身  
  - 
    
