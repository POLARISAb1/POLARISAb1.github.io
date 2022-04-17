---
title: 16.1 内置库-logging
date: 2022-03-10 16:37:25
categories: 测试学习
tags: [python编程语言]
---

# 日志logging

## 1. 日志作用

- 调试
- 复制定位问题
- 数据分析

## 1.1 日志的级别

| 级别       | 何时使用                                                     | 级别数值 |
| ---------- | ------------------------------------------------------------ | -------- |
| `DEBUG`    | 细节信息，仅当诊断问题时适用                                 | 10       |
| `INFO`     | 确认程序按预期运行                                           | 20       |
| `WARNING`  | 表明有已经或即将发生的意外（例如：磁盘空间不足）程序仍按预期进行 | 30       |
| `ERROR`    | 由于严重的问题，程序的某些功能已经不能正常执行               | 40       |
| `CRITICAL` | 严重的错误，表明程序已不能继续执行                           | 50       |

> 默认的日志级别是`warning`

```python
import logging

logging.debug("debug_msg")
logging.info("info_msg")
logging.warning("warning_msg")
logging.error("error_msg")
logging.critical("critical_msg")
```

输出：

```
WARNING:root:warning_msg
ERROR:root:error_msg
CRITICAL:root:critical_msg
```

## 1.2 日志的用法

https://docs.python.org/zh-cn/3/howto/logging.html

| 函数                                     | 说明                                   |
| ---------------------------------------- | -------------------------------------- |
| `logging.debug(msg, *args, **kwargs)`    | 创建一条严重级别为`DEBUG`的日志记录    |
| `logging.info(msg, *args, **kwargs)`     | 创建一条严重级别为`INFO`的日志记录     |
| `logging.warning(msg, *args, **kwargs)`  | 创建一条严重级别为`WARNING`的日志记录  |
| `logging.error(msg, *args, **kwargs)`    | 创建一条严重级别为`ERROR`的日志记录    |
| `logging.critical(msg, *args, **kwargs)` | 创建一条严重级别为`CRITICAL`的日志记录 |
| `logging.log(level, *args, **kwargs)`    | 创建一条严重级别为`level`的日志记录    |
| **`logging.basicConfig(**kwargs)`**      | 对**`root logger`**进行一次性配置      |

日志的输出：

```python
logging.basicConfig(level=logging.DEBUG)#将日志的输出级别调节为debug
logging.basicConfig(filename='demo.log',level=logging.DEBUG)#将日志的输出到demo.log文件中
logging.basicConfig(filename='demo.log',filemote='w',level=logging.DEBUG)#先清空再写入，也可以设置为继续写
```

常用的输出（字符串格式化输出）

```python
logging.debug("姓名 %s, 年龄%d",name,age)
logging.debug("姓名 %s, 年龄%d",% (name,age))
logging.debug("姓名 {}, 年龄{}".format(name,age))
logging.debug(f"姓名{name}, 年龄{age}")
```

直接输入上面的代码并不会打印，因为logging的默认级别是WARNING，而此处的日志级别是DEBUG，需要手动设置日志级别，用下面的方法。

### 1.2.1 logging.basicConfig()函数说明

该方法用于为logging日志系统做一些基本配置，方法定义如下：

```python
logging.basicConfig(**kwargs)
```

该函数可接收的关键字参数如下：

| 参数名称    | 描述                                                         |
| ----------- | ------------------------------------------------------------ |
| filename    | 指定日志输出目标文件的文件名，指定该设置项后日志信息就不会被输出到控制台了，日志文件会在python代码文件的相同目录下会生成 |
| filemode    | 指定日志文件的打开模式，默认为`'a'`。需要注意的是，该选项要在filename指定时才有效。**如果希望每次清空再写入，设置为`'w'`** |
| format      | 指定日志格式字符串，即指定日志输出时所包含的字段信息以及它们的顺序。logging模块定义的格式字段下面会列出。 |
| **datefmt** | 指定日期/时间格式。需要注意的是，该选项要在format中包含时间字段%(asctime)s时才有效 |
| level       | 指定日志器的日志级别。设置哪个级别，就会打印**哪个级别以上**的日志 |
| stream      | 指定日志输出目标stream，如`sys.stdout`、`sys.stderr`以及网络`stream`。需要说明的是，stream和filename不能同时提供，否则会引发 `ValueError`异常 |
| style       | Python 3.2中新添加的配置项。指定format格式字符串的风格，可取值为'%'、'{'和'$'，默认为'%' |
| handlers    | Python 3.3中新添加的配置项。该选项如果被指定，它应该是一个创建了多个Handler的可迭代对象，这些handler将会被添加到root logger。需要说明的是：filename、stream和handlers这三个配置项只能有一个存在，不能同时出现2个或3个，否则会引发ValueError异常。 |

```python
logging.basicConfig(filename='demo.log', filemode='w', level=logging.DEBUG, format='%(asctime)s | %(levelname)-8s | **%(filename)s | %(message)s')
logging.debug("debug_msg")
logging.info("info_msg")
logging.warning("warning_msg")
logging.error("error_msg")
logging.critical("critical_msg")
name = '张三'
age = 18
logging.debug(f"姓名{name}, 年龄{age}")
```

在与该文件相同目录下，生成的`demo.log`，输出：

```c
2022-03-11 16:00:23,030 | DEBUG    | **logging_demo.py | debug_msg
2022-03-11 16:00:23,030 | INFO     | **logging_demo.py | info_msg
2022-03-11 16:00:23,030 | WARNING  | **logging_demo.py | warning_msg
2022-03-11 16:00:23,030 | ERROR    | **logging_demo.py | error_msg
2022-03-11 16:00:23,030 | CRITICAL | **logging_demo.py | critical_msg
2022-03-11 16:00:23,030 | DEBUG    | **logging_demo.py | 姓名张三, 年龄18
```

`datefmt` 参数的格式：

| 指令     | 含意                                                         |
| :------- | :----------------------------------------------------------- |
| `%a`     | 本地化的缩写星期中每日的名称。                               |
| `%A`     | 本地化的星期中每日的完整名称。                               |
| `%b`     | 本地化的月缩写名称。                                         |
| `%B`     | 本地化的月完整名称。                                         |
| `%c`     | 本地化的适当日期和时间表示。                                 |
| **`%d`** | 十进制数 [01,31] 表示的月中日。                              |
| **`%H`** | 十进制数 [00,23] 表示的小时（24小时制）。                    |
| `%I`     | 十进制数 [01,12] 表示的小时（12小时制）。                    |
| `%j`     | 十进制数 [001,366] 表示的年中日。                            |
| **`%m`** | 十进制数 [01,12] 表示的月。                                  |
| **`%M`** | 十进制数 [00,59] 表示的分钟。                                |
| `%p`     | 本地化的 AM 或 PM 。                                         |
| **`%S`** | 十进制数 [00,61] 表示的秒。                                  |
| `%U`     | 十进制数 [00,53] 表示的一年中的周数（星期日作为一周的第一天）。 在第一个星期日之前的新年中的所有日子都被认为是在第 0 周。 |
| `%w`     | 十进制数 [0(星期日),6] 表示的周中日。                        |
| `%W`     | 十进制数 [00,53] 表示的一年中的周数（星期一作为一周的第一天）。 在第一个星期一之前的新年中的所有日子被认为是在第 0 周。 |
| `%x`     | 本地化的适当日期表示。                                       |
| `%X`     | 本地化的适当时间表示。                                       |
| `%y`     | 十进制数 [00,99] 表示的没有世纪的年份。                      |
| **`%Y`** | 十进制数表示的带世纪的年份。                                 |
| `%z`     | Time zone offset indicating a positive or negative time difference from UTC/GMT of the form +HHMM or -HHMM, where H represents decimal hour digits and M represents decimal minute digits [-23:59, +23:59]. [1](https://docs.python.org/zh-cn/3/library/time.html#id4) |
| `%Z`     | Time zone name (no characters if no time zone exists). Deprecated. [1](https://docs.python.org/zh-cn/3/library/time.html#id4) |
| `%%`     | 字面的 `'%'` 字符。                                          |

### 1.2.2 logging模块定义的格式字符串字段

logging模块中定义好的可以用于format格式字符串中的字段：

| 字段/属性名称   | 使用格式            | 描述                                                         |
| --------------- | ------------------- | ------------------------------------------------------------ |
| **asctime**     | %(asctime)s         | 日志事件发生的时间--人类可读时间，如：2003-07-08 16:49:45,896 |
| created         | %(created)f         | 日志事件发生的时间--时间戳，就是当时调用time.time()函数返回的值 |
| relativeCreated | %(relativeCreated)d | 日志事件发生的时间相对于logging模块加载时间的相对毫秒数（目前还不知道干嘛用的） |
| msecs           | %(msecs)d           | 日志事件发生事件的毫秒部分                                   |
| **levelname**   | %(levelname)s       | 该日志记录的文字形式的日志级别（'DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL'） |
| levelno         | %(levelno)s         | 该日志记录的数字形式的日志级别（10, 20, 30, 40, 50）         |
| name            | %(name)s            | 所使用的日志器名称，默认是'root'，因为默认使用的是 rootLogger |
| **message**     | %(message)s         | 日志记录的文本内容，通过 `msg % args`计算得到的              |
| pathname        | %(pathname)s        | 调用日志记录函数的源码文件的全路径                           |
| **filename**    | %(filename)s        | pathname的文件名部分，包含文件后缀                           |
| module          | %(module)s          | filename的名称部分，不包含后缀                               |
| lineno          | %(lineno)d          | 调用日志记录函数的源代码所在的行号                           |
| funcName        | %(funcName)s        | 调用日志记录函数的函数名                                     |
| process         | %(process)d         | 进程ID                                                       |
| processName     | %(processName)s     | 进程名称，Python 3.1新增                                     |
| thread          | %(thread)d          | 线程ID                                                       |
| threadName      | %(thread)s          | 线程名称                                                     |
