---
title: 14.5 Python lambda表达式
date: 2022-02-21 14:20:10
categories: 测试学习
tags: [python编程语言]

---

# 匿名函数

- 没有名字的函数
- 用 lambda 表达式创建匿名函数



# 使用场景

- 需要一个函数，但是又不想费神去命名这个函数
- 通常在这个函数只使用一次的场景下
- 可以指定短小的回调函数

例子：

```python
# 常规写法
import math


def circle_area(r):
    """计算圆面积
    r为半径"""
    result = math.pi * r ** 2
    return result


r = 10
print(f"半径为{r}的圆的面积为{circle_area(r)}")
```

结果：

```python
半径为10的圆的面积为314.1592653589793
```

# 语法

- result：调用 lambda 表达式

- [arg1 [, arg2, …. , argn]]：可选，指定要传递的参数列表

- expression：必选，指定一个实现具体功能的表达式

    ```python
    result = lambda [arg1 [, arg2, .... , argn]]: expression
    ```

例子：

## 常规写法：

```python
# 常规写法
import math


def circle_area(r):
    """计算圆面积
    r为半径"""
    result = math.pi * r ** 2
    return result


r = 10
print(f"半径为{r}的圆的面积为{circle_area(r)}")
```

结果：

```python
半径为10的圆的面积为314.1592653589793
```

## 用lambda表达式实现

```python
r = 10
# 用lambda 表达式实现
result = lambda r: math.pi * r ** 2
print(f"半径为{r}的圆的面积为{result(r)}")
# 需要用变量存储lambda，直接输出是不行的
print(lambda r: math.pi * r ** 2)
```

结果：

```python
半径为10的圆的面积为314.1592653589793
<function <lambda> at 0x000001C3FBF8A200>
```

# 实例

- 对获取到的信息进行排序

    ```python
    # 书籍价格
    # 利用列表储存信息，书籍和价格为元组存储
    book_info = [
        ('python', 22.5),
        ('java', 20),
        ('go', 25)
    ]
    print(book_info)
    # 指定按价格进行排序
    # lambda x: x[1] 返回列表中每个元组的第二个元素
    book_info.sort(key=lambda x: X[1])
    print(book_info)
    ```

    结果：

    ```python
    [('python', 22.5), ('java', 20), ('go', 25)]
    [('java', 20), ('python', 22.5), ('go', 25)]
    ```

    
