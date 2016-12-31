# GCDTimer
基于GCD创建定时器，相对于NSTimer比较不会影响持有对象的生命周期，可以使对象及时释放

使用
-----------------
###属性
* `NSTimeInterval interval:`定时间隔
* `BOOL repeats:`是否重复
* `void (^Task)():`执行方法的block参数
* `id target:`定时器添加目标，一般是持有定时器的对象
* `SEL selector:`执行方法

### 创建:提供两种静态方法
* 第一种创建方式不会影响持有定时器对象的生命周期
```
+ (instancetype)timerWithInterval:(NSTimeInterval)interval repeats:(BOOL)repeats target:(id)target selector:(SEL)selector;
```

* 第二种是block创建方式，会影响持有定时器的对象生命周期，需要使用__weak避免
```
+ (instancetype)timerWithInterval:(NSTimeInterval)interval repeats:(BOOL)repeats task:(void (^)())task;
```
### 启动
定时器不会自动运行，需调用resumeTimer启动
``` 
- (instancetype)resumeTimer;    
```
### 暂停/终止
```
- (void)removeTimer;
```
