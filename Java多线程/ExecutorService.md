```java
import java.util.concurrent.ExecutorService;
```
- `ExecutorService`是`java5`之后推出的线程池框架  
- `ExecutorService`继承自`Executor`，拥有更多的功能  
- `ExecutorService`接口四种自带的线程池实现：
  - `CachedThreadPool` 可缓存线程池，如果线程池长度超过处理需要，可灵活回收空闲线程，若无可回收，则新建线程。  
  - `FixedThreadPool` 创建一个定长线程池，可控制线程最大并发数，超出的线程会在队列中等待。
  - `ScheduledThreadPool` 定长线程池，支持定时及周期性任务执行。
  - `SingleThreadExecutor` 单线程化的线程池，它只会用唯一的工作线程来执行任务，保证所有任务按照指定顺序(FIFO, LIFO, 优先级)执行。 
