# 什么是QuickSwiftKernel?
Qskernel是基于微内核架构开发的跨平台微内核. 这个版本使用C为主要实现方式,未来有纯汇编实现. 

小学生级代码😂

| 目录    | 描述               |
| ------- | ------------------ |
| arch    | 放置平台差异化代码 |
| doc     | 开发文档           |
| drivers | 通用驱动源码       |
| include | 头文件目录         |
| ipc     | 进程间通信源码     |
| kernel  | 内核实现           |
| lib     | 头文件实现         |
| scripts | 放置脚本文件       |
| task    | 任务管理源码       |
| vmm     | 虚拟内存管理源码   |

# 编译(测试)
## Windows

暂不支持ARM版Windows下编译(没有环境测试)

```shell
make kernel
```

## linux

如果是其他架构的Linux需要修改配置文件

```shell
make kernel
```