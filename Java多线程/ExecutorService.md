[ref:Eng](http://tutorials.jenkov.com/java-util-concurrent/executorservice.html#executorservice-example)  
[ref:中文：开源中国](http://my.oschina.net/bairrfhoinn/blog/177639)     
```java
import java.util.concurrent.ExecutorService;
```
- `ExecutorService`接口是`java5`之后推出的线程池框架  
- `ExecutorService`继承自`Executor`，拥有更多的功能  
## 四种自带的线程池实现：
  - `CachedThreadPool` 可缓存线程池，如果线程池长度超过处理需要，可灵活回收空闲线程，若无可回收，则新建线程。  
  - `FixedThreadPool` 创建一个定长线程池，可控制线程最大并发数，超出的线程会在队列中等待。
  - `ScheduledThreadPool` 定长线程池，支持定时及周期性任务执行。
  - `SingleThreadExecutor` 单线程化的线程池，它只会用唯一的工作线程来执行任务，保证所有任务按照指定顺序(FIFO, LIFO, 优先级)执行。 
## 使用`Executor`的工厂方法新建线程池：  
  ```java
  ExecutorService executorService1 = Executors.newSingleThreadExecutor();
  ExecutorService executorService2 = Executors.newFixedThreadPool(10);
  ExecutorService executorService3 = Executors.newScheduledThreadPool(10);
  ```

## 执行任务的方法： 
  ```java
  execute(Runnable)
  submit(Runnable)
  submit(Callable)
  invokeAny(...)
  invokeAll(...)
  ```
  - `execute(Runnable)`  


## 关闭线程池：  
- 当使用 ExecutorService 完毕之后，我们应该关闭它，这样才能保证线程不会继续保持运行状态。  
  举例来说，如果你的程序通过 `main()` 方法启动，并且主线程退出了你的程序，如果你还有壹個活动的 `ExecutorService` 存在于你的程序中，那么程序将会继续保持运行状态。存在于 `ExecutorService` 中的活动线程会阻止Java虚拟机关闭。  
- 为了关闭在`ExecutorService`中的线程，你需要调用`shutdown()`方法。`ExecutorService`并不会马上关闭，而是不再接收新的任务，壹但所有的线程结束执行当前任务，`ExecutorServie`才会真的关闭。所有在调用`shutdown()`方法之前提交到`ExecutorService`的任务都会执行。  
- 如果你希望立即关闭`ExecutorService`，你可以调用`shutdownNow()`方法。这個方法会尝试马上关闭所有正在执行的任务，并且跳过所有已经提交但是还没有运行的任务。但是对于正在执行的任务，是否能够成功关闭它是无法保证的，有可能他们真的被关闭掉了，也有可能它会壹直执行到任务结束。这是壹個最好的尝试。  
  ```java
  
  ```
