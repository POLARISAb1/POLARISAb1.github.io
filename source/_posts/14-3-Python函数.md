---
title: 14.3 Python函数
date: 2022-02-21 14:15:13
categories: 测试学习
tags: [python编程语言]

---

# 函数的作用

- 函数是组织好的，可重复使用的，用来实现单一或相关联功能的代码段
- 函数能提高应用的模块性和代码的重复利用率
- python 内置函数：https://docs.python.org/zh-cn/3.8/library/functions.html

# 函数定义

- def：函数定义关键词
- function_name：函数名称
- ()：参数列表放置的位置，可以为空
- parameter_list：可选，指定向函数中传递的参数
- comments：可选，为函数指定注释`"""XXX"""`
- function_body：可选，指定函数体

```python
def function_name([parameter_list]):
    [''' comments ''']
    [function_body]
```

例子：

## 空函数

```python
# 定义空函数
def function_name(function_name):
    """ 这是一个空函数 """
    pass
```

当没有函数体时，写入comments或者是`pass`语句，否则会报错。

## 定义一个无参函数

```python
# 定义一个函数
def fun1():
    """函数体"""
    print("这是一个函数")

fun1()
```

结果：

```python
这是一个函数
```

## 定义一个有参函数

```python
def fun2(a, b, c):
    """这是一个携带参数和注释的函数"""
    print(f"传入的参数为：a={a},b={b},c={c}")

# 打印函数comments的内容
print(fun2.__doc__)
help(fun2)
```

结果：

```python
这是一个携带参数和注释的函数
Help on function fun2 in module __main__:
fun2(a, b, c)
    这是一个携带参数和注释的函数
```

> [python](https://so.csdn.net/so/search?q=python&spm=1001.2101.3001.7020)的print字符串前面加f表示格式化字符串，加f后可以在字符串里面使用用花括号括起来的变量和表达式，如果字符串里面没有表达式，那么前面加不加f输出应该都一样

## 定义函数的注意事项

- 缩进：python 是通过严格的缩进来判断代码块儿
    - 函数体和注释相对于 def 关键字必须保持一定的缩进，一般都是 4 个空格
    - pycharm 自动格式化快捷键：`ctrl+alt+L`
- 定义空函数
    - 使用 `pass` 语句占位
    - 写函数注释 comments

# 函数调用

- function_name：函数名称
- parameter_value：可选，指定各个参数的值

```python
function_name([parameter_value])
```

例子：

```python
def fun2(a, b, c):
    """这是一个携带参数和注释的函数"""
    print(f"传入的参数为：a={a},b={b},c={c}")

    
# 函数调用
fun2(1, 2, 3)
```

结果：

```python
传入的参数为：a=1,b=2,c=3
```

# 参数传递

- 形式参数：定义函数时，函数名称后面括号中的参数

- 实际参数：调用函数时，函数名称后面括号中的参数

    ```python
    # a, b, c 为形式参数
    def demo_func(a, b, c):
        print(a, b, c)
    
    
    # 1, 2, 3 为实际参数
    demo_func(1, 2, 3)
    ```

    结果：

    ```python
    1 2 3
    ```

## 位置参数

- 数量必须与定义时一致

- 位置必须与定义时一致

    > 例子同上：1 赋值给 a, 2 赋值给 b, 3 赋值给 c

## 关键字参数

- 使用形式参数的名字确定输入的参数值

- 不需要与形式参数的位置完全一致

    ```python
    def demo_func(a, b, c):
        print(a, b, c)
    
    
    demo_func(b=2, a=1, c=3)
    ```

    结果：

    ```python
    1 2 3
    ```

## 为参数设置默认值

- 定义函数时可以指定形式参数的默认值

- 指定默认值的形式参数必须放在所有参数的最后，否则会产生语法错误

- `param=default_value`：可选，指定参数并且为该参数设置默认值为 default_value

    ```python
    def function_name(..., [param=default_value]):
        [function_body]
    ```

    例子1：设置默认参数

    ```python
    def demo(a, b, c=3):
        print(a, b, c)
    
    
    demo(1, 2)
    ```

    结果：

    ```python
    1 2 3
    ```

    > 如果首个参数设置默认值则会报错：SyntaxError: non-default argument follows default argument

例子2：参数默认值为空列表

```python
def demo2(a, b, c=[]):
    c.append(a)
    c.append(b)
    print(a, b, c)


demo2(1, 2)
```

结果：

```python
1 2 [1, 2]
```

> 可以看到随着实参键入，默认参数空列表不再为空。默认值一定要用不可变对象，否则的话默认值可能会随着调用发生变化。

# 函数返回值

\- value：可选，指定要返回的值

```python
def function_name([parameter_list]):
    [''' comments ''']
    [function_body]
    return [value]
```

例子：

```python
# 定义加法函数
def sum(a, b):
    result = a + b
    # 函数返回值
    return a, b, result


r = sum(1, 2)
print(r)
```

结果：

```python
(1, 2, 3)
```

如果注释掉第5行，则输出：

```python
None
```

