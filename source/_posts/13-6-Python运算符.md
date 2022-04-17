---
title: 13.6 Python运算符
date: 2022-02-21 11:48:30
categories: 测试学习
tags: [python编程语言]
---



# 运算符的作用

- Python基础语法的内容
- 通常表示不同数据或变量之间的关系

# 算数运算符

<img src="13-6-Python运算符/image-20220214143828957-16448207115151.png" alt="image-20220214143828957" style="zoom:67%;" />

<img src="13-6-Python运算符/image-20220214143834400-16448207160832.png" alt="image-20220214143834400"  />

# 比较运算符

<img src="13-6-Python运算符/image-20220214143910164.png" alt="image-20220214143910164" style="zoom:67%;" />

- 输出布尔值

# 赋值运算符

<img src="13-6-Python运算符/image-20220214143943557.png" alt="image-20220214143943557" style="zoom:67%;" />

<img src="13-6-Python运算符/image-20220214144037404-16448208385265.png" alt="image-20220214144037404"  />

# 逻辑运算符

<img src="13-6-Python运算符/image-20220214144100535.png" alt="image-20220214144100535" style="zoom:67%;" />

```python
a, b = True, False
print(a and b)
print(a or b)
print(not b)
print(not a)
```

结果：

```
False
True
True
False
```



# 成员运算符

<img src="13-6-Python运算符/image-20220214144746738.png" alt="image-20220214144746738" style="zoom:67%;" />

```python
list_a = {'a', 'b', 'c'}
str_a = 'rfedaergd'
str_b = 'gfdgarrfed'
print('a' in list_a)
print('a' not in list_a)
print('a' in str_a)
print('a' not in str_a)
print('a' not in str_b)
```

结果：

```
True
False
True
False
False
```

> in 右边一定是一个序列：字符串、数列、元组、列表······
>
> 返回值：布尔值

# 身份运算符

<img src="13-6-Python运算符/image-20220214145100845.png" alt="image-20220214145100845" style="zoom:67%;" />

<img src="13-6-Python运算符/image-20220214145148059-16448215092519.png" alt="image-20220214145148059"  />

> a与b内存地址不同

- is是判断两个变量之间的**内存地址**是否相同——**是否是对同一个对象的引用**
- 可变的数据结构，即使看着一样，但是内存地址是不同的
- 不可变的数据类型，如果看着一样，那么他们的内存地址是相同的

> 在`python`中针对`NONE`比较时，建议使用`is`判断

**`is`与`==`区别**

- `is`用于判断**两个变量** **引用对象是否为同一个**
- `==`用于判断**引用变量的值**是否相等
