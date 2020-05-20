# JS: 类，对象，原型和继承  

### JS中的类  
- 原生JS是不存在`class`这个概念的（ES6中加入了`class`语法糖，但本质上属于`寄生混合继承`）  
- 那么JS中的继承又是如何实现的呢？  
  - **原型**：JS中的所有`function`都是对象，每一个方法对象都自动包含了一个field：`prototype`；  
    - `prototype`field是指向一个原型对象的引用；  
  - **原型链**：一个类的原型对象可以设为任意`对象A` -> `对象A所属类`的原型对象可以设置为任意`对象B` -> ...  
    如此迭代，直到最后一个原型对象成了`null`为止  
  - 当调用一个对象的field/function时，JS的执行具有“顺藤摸瓜”的功能：  
    如果该对象不具有这个field/function，就进到它的原型对象里找 -> 原型对象里没有，就进到原型对象的原型对象里找...  
    （啥时候找到啥时候停，如果找到最后都没有，就返回`undefined`）  
    这同时也说明了：JS的继承一定属于dynamic dispatch  
- 如何创造一个类呢？  
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
    
