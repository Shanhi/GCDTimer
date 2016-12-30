# GCDTimer
基于GCD创建定时器

使用
-----------------
### 创建:提供两种静态方法
* 第一种创建方式不会影响持有定时器对象的生命周期
```
+ (instancetype)timerWithInterval:(NSTimeInterval)interval repeats:(BOOL)repeats target:(id)target selector:(SEL)selector;
```

* 第二种是block创建方式，会影响持有定时器的对象生命周期，需要使用__weak
```
+ (instancetype)timerWithInterval:(NSTimeInterval)interval repeats:(BOOL)repeats task:(void (^)())task;
```
### 启动
    - (instancetype)resumeTimer;  //定时器不会自动运行，需调用resumeTimer启动
### 暂停/终止
    - (void)removeTimer;
