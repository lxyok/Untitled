**adb shell am start -n  包名/类名**

******

或

*****

**adb shell am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -n**  

**包名/类名**

QQ  

```
com.tencent.mobileqq/com.tencent.mobileqq.activity.SplashActivity
```

​                               微信  

```
com.tencent.mm/com.tencent.mm.ui.LauncherUI
```

### 查看当前app的入口

```
adb shell dumpsys window windows | findstr "Current"
```

##### 返回值

微信

```
mCurrentFocus=Window{c724d26 u0 com.tencent.mm/com.tencent.mm.ui.LauncherUI}
```

QQ   

```
mCurrentFocus=Window{6b994f u0 com.tencent.mobileqq/com.tencent.mobileqq.activity.SplashActivity}
```

淘宝  

```
mCurrentFocus=Window{deaf49d u0 com.taobao.taobao/com.taobao.tao.TBMainActivity}
```

**#打开微信**adb shell am start -n **com.tencent.mm/com.tencent.mm.ui.LauncherUI**
adb shell am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -n **com.tencent.mm/com.tencent.mm.ui.LauncherUI**

### 打开App方式 1

#com.tencent.mobileqq/com...  这个是上面获取到的

```
adb shell am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -n com.tencent.mobileqq/com.tencent.mobileqq.activity.SplashActivity
```

### 打开方式2

```
adb shell am start -n   com.tencent.mobileqq/com.tencent.mobileqq.activity.SplashActivity
```

