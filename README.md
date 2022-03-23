# ios_lib_test
在xcode上面生成iOS静态库.a文件，并引用。
项目地址 github：<https://github.com/lijmin/SO2NDK>

## 创建libhello.a
打开xcode，依次点击File->New->Project->Static Library创建项目
![](https://lijmin.github.io/00_blogImg/img_blog16_01.png)
<!--More-->
创建简单的c文件，添加add方法
hello.h
```c++
#ifndef hello_h
#define hello_h

int add(int a, int b);

#endif
```
hello.c
```c++
#include "hello.h"

int add(int a, int b){
    return a+b;
}
```
点击command+b编译，编译成功即可在Products目录下生成libhello.a。
右键libhello.a->Show in Filder，把libhello.a拷贝出来备用。

如果没有Products目录
到项目的目录下找hello.xcodeproj文件，右键显示包内容
然后打开project.pbxproj文件
搜索mainGroup，把mainGroup后面的内容复制到productRefGroup
回到xcode即可看到Products

## 引用hello.a
打开xcode，依次点击File->New->Project->app创建项目
![](https://lijmin.github.io/00_blogImg/img_blog16_02.png)
创建hello文件夹，将hello.h、libhello.a拖入到文件夹下面
![](https://lijmin.github.io/00_blogImg/img_blog16_03.png)
在ViewController.m里面调用hello.c的add方法
![](https://lijmin.github.io/00_blogImg/img_blog16_04.png)
点击运行即可在控制台看到打印结果。
`hello add = 3`
