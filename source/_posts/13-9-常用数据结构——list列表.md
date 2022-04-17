---
title: 13.9 常用数据结构——list列表
date: 2022-02-21 14:00:38
categories: 测试学习
tags: [python编程语言]

---



# 列表定义与使用

## 列表定义

<img src="../../../Markdown文档/测试/3 Python编程语言/13.9 Python常用数据结构——list列表/image-20220215094659500-16448896212761.png" alt="image-20220215094659500"  />

- 列表是有序的可变元素的集合，使用中括号`[]`包围，元素之间用逗号分隔
- 列表是**动态**的，可以随时扩展和收缩
- 列表是**异构**的，可以同时存放不同类型的对象
- 列表中允许出现**重复**元素

## 列表的使用

### 创建

- 创建列表

    - 通过构造函数创建

        ```python
        # 空列表
        li1 = list()  
        # 字符串
        li2 = list('yyl')  
        print(type(li1), li1)	# 打印 <class 'list'> []
        print(type(li2), li2)	# 打印 <class 'list'> ['y', 'y', 'l']
        ```

    - 中括号创建并填充

        ```python
        # 空列表
        li3 = []  
         # 直接填充对象
        li4 = [1, 2, 3] 
        li5 = ['yyl', 'is', 'a', 'girl']
        print(type(li3), li3)	# 打印 <class 'list'> []
        print(type(li4), li4)	# 打印 <class 'list'> [1, 2, 3]
        print(type(li5), li5)	# 打印 <class 'list'> ['yyl', 'is', 'a', 'girl']
        # 因为列表是异构的,可以同时储存
        li6 = [1, 3.14, 'yyl', ['girl', 5, 6]]
        print(type(li6), li6)	# 打印 <class 'list'> [1, 3.14, 'yyl', ['girl', 5, 6]]
        ```

    - 列表推导式

        ```python
        li7 = [i for i in range(1, 10) if i % 2 == 0]
        print(type(li7), li7)	# 打印 <class 'list'> [2, 4, 6, 8]
        ```

### 索引

<img src="../../../Markdown文档/测试/3 Python编程语言/13.9 Python常用数据结构——list列表/image-20220215110446481-16448942875662.png" alt="image-20220215110446481"  />

- 索引

    - 默认正向索引，编号从 0 开始。

        ```python
        li = [1, 2, 3, 4, 5]
        print(li[0])  # 打印1
        print(li[3])  # 打印4
        ```

    - 支持反向索引，编号从-1 开始。

        ```python
        li = [1, 2, 3, 4, 5]
        print(li[-1])  # 打印 5
        ```

### 切片

<img src="../../../Markdown文档/测试/3 Python编程语言/13.9 Python常用数据结构——list列表/image-20220215111438900-16448948808173.png" alt="image-20220215111438900"  />

- 切片 [start: stop: step]

    - start 值: 指示开始索引值，如果没有指定，则默认开始值为 0
    - stop 值: 指示到哪个索引值结束，但**不包括这个结束索引值**。如果没有指定，则取列表允许的最大索引值；如果要取结束元素本身，可以取结束索引值+1
    - step 值: 步长值指示每一步大小，如果没有指定，则默认步长值为 1
    - 三个值都是可选的，非必填

    ```python
    # 切片基本用法
    # 索引值0    1    2    3    4    5    6    7    8    9
    li = ['y', 'y', 'l', 'i', 's', 'a', 'g', 'i', 'r', 'l']
    print(li[0:5:2])	# 打印 ['y', 'l', 's']
    print(li[2:4])	# 打印 ['l', 'i']
    print(li[:4])	# 打印 ['y', 'y', 'l', 'i']
    print(li[2:])	# 打印 ['l', 'i', 's', 'a', 'g', 'i', 'r', 'l']
    print(li[::2])	# 打印  ['y', 'l', 's', 'g', 'r']
    # 取最后一个元素
    print(li[9:])	# 打印 ['l']
    print(li[-1:])	# 打印 ['l']
    # 特殊的切片写法：逆序打印
    print(li[::-1]) 	# 打印 ['l', 'r', 'i', 'g', 'a', 's', 'i', 'l', 'y', 'y']
    ```

### 运算符

- 重复

    - 使用 `*` 运算符可以重复生成列表元素。

        ```python
        li = [1] * 5
        print(li)  # 打印[1, 1, 1, 1, 1]
        ```

- 合并

    - 使用 `+` 加号运算符，可以将两个列表合二为一。

        ```python
        li1 = [1, 2, 3]
        li2 = [99, 100]
        print(li1 + li2)  # 打印[1, 2, 3, 99, 100]
        ```

### 成员检测

- in：检查一个对象是否在列表中，如果在则返回 True，否则返回 False。

    ```python
    li = [1, 2, 3]
    # in
    print(1 in li)  # 返回True
    print(100 in li)  # 返回False
    ```

- not in：检查一个列表是否不包含某个元素。如果不在返回 True，否则返回 False。

    ```python
    print(1 not in li)  # 返回False
    print(100 not in li)  # 返回True
    ```

# 列表常用方法

## append()

- `append(item)`：将一个对象 item 添加到列表的末尾。

- 入参：对象 item

- 返回：None

    ```python
    # 添加元素
    li = []
    li.append(1)
    li.append(3.14)
    li.append("hogwarts")
    li.append([6, 6, 6])
    li.append((1.2, 1.5))
    li.append({'msg': "Hello"})
    print(li)  # 打印列表
    print(len(li))  # 获取列表元素个数
    ```

    结果：

    ```python
    [1, 3.14, 'hogwarts', [6, 6, 6], (1.2, 1.5), {'msg': 'Hello'}]
    6
    ```

## extend()

- `extend(iterable)`：将一个可迭代对象的所有元素，添加到列表末尾。

- 入参：可迭代对象 iterable

- 返回：None

    ```python
    li = []
    li.extend('hogwarts')  # 添加的是字符串的所有字母
    li.extend([1, 2, 3])  # 接收列表的所有元素
    li.extend((4, 5, 6))  # 接收元组的所有元素
    li.extend({'a': 1, 'b': 2})  # 接收字典的所有key值
    print(li)	# 打印 ['h', 'o', 'g', 'w', 'a', 'r', 't', 's', 1, 2, 3, 4, 5, 6, 'a', 'b']
    ```

## insert()

- `insert(index, item)`：将一个对象插入到指定的索引位置

- 入参：索引值 index ，一个对象 item

- 返回：None

- 原索引位置及后面的元素**后移一位**

    ```python
    li = [0, 1, 2]
    print("插入前: ", li)  # 打印 [0, 1, 2]
    # 在索引0的位置插入元素
    li.insert(0, 'hogwarts')
    print("插入后: ", li)  # 打印 ['hogwarts', 0, 1, 2]
    ```

    结果：

    ```python
    插入前:  [0, 1, 2]
    插入后:  ['hogwarts', 0, 1, 2]
    ```

## pop()

- `pop(index) 或 pop()`

- 弹出并返回所指定索引的元素。

- 入参：索引值 index，可不传

- 返回：指定索引的元素；未指定索引则返回**末尾元素**

- 如果索引值不正确，或者列表已经为空，则引发 IndexError 错误

    ```python
    letters = ['h', 'o', 'g', 'w', 'a', 'r', 't', 's']
    
    # 传入索引3，弹出元素 w
    n1 = letters.pop(3)
    print(n1)  # 打印 w
    print(letters)	# 打印['h', 'o', 'g', 'a', 'r', 't', 's']
    
    # 不传参数，默认弹出末尾元素
    n2 = letters.pop()
    print(n2)  # 打印 s
    print(letters)	# 打印['h', 'o', 'g', 'a', 'r', 't'
    ```

## remove()

- `remove(item)`

- 移除列表中第一个等于 item 的元素

- 入参：指定元素 item

- 返回：None

- 目标元素必须已存在，否则会报 ValueError

    ```python
    li = ['h', 'o', 'g', 'w', 'a', 'r', 't', 's']
    print(len(li))  # 打印 8
    
    # 1、删除指定元素'h'
    li.remove('h')
    print(li)  # 打印 ['o', 'g', 'w', 'a', 'r', 't', 's']
    print(len(li))  # 打印 7
    
    # 2、移除第一个2
    li = [1, 2, 3, 2, 1]
    li.remove(2)
    print(li)  # 打印 [1, 3, 2, 1]
    
    # 3、删除不存在的元素，会报ValueError错误
    li = [1, 2, 3]
    li.remove(100)
    ```

## sort()

- `sort(key=None, reverse=False)`

- 对列表进行原地排序，只使用 < 来进行各项间比较。

- 入参：支持 2 个关键字参数：

    - `key`：指定带有一个参数的**函数**，用于从每个列表元素中提取比较键。
    - `reverse`：默认值为 False 表示升序，为 True 表示降序

- 返回：None

    ```python
    nums = [2, 4, 3, 1, 5]
    
    # 1、不传参数，默认升序，数字从小到大排列
    nums.sort()
    print(nums)  # 打印 [1, 2, 3, 4, 5]
    
    # 2、指定key=len，按元素的长度排序
    words = ['Python', 'Java', 'R', 'Go']
    words.sort(key=len)
    print(words)  # 打印 ['R', 'Go', 'Java', 'Python']
    
    # 3、指定reverse=True，降序
    nums = [2, 4, 3, 1, 5]
    nums.sort(reverse=True)
    print(nums)  # 打印 [5, 4, 3, 2, 1]
    ```

## reverse()

- `reverse()`：将列表中的元素顺序反转

- 参数：无

- 返回：None

- 反转只是针对索引值，元素之间不相互比较。

    ```python
    # 反转顺序
    nums = [8, 1, 5, 2, 77]
    nums.reverse()
    print(nums)  # 打印[77, 2, 5, 1, 8]
    ```

# 列表嵌套

- 嵌套列表是指在列表里存放列表

- 列表的常用方法都适用于嵌套列表

    ```python
    # 1、创建嵌套列表
    li_2d = [['a', 'b', 'c'], [1, 2, 3]]
    print(li_2d)  # 打印 [['a', 'b', 'c'], [1, 2, 3]]
    print(type(li_2d))  # 打印<class 'list'>
    print(len(li_2d))  # 打印 2
    
    # 2、访问嵌套列表中的元素
    print(li_2d[0][2])  # 打印 'c'——获取列表第一个元素的第三个值
    ```

# 列表推导式

- 列表推导式是指循环创建列表，相当于 for 循环创建列表的简化版

- 语法：`[x for x in list if x ...]`

    ```python
    # 1、传统解决方案
    result = []
    for ele in range(1, 11):
        if ele % 2 == 0:
            result.append(ele ** 2)
    print(result)  # 打印 [4, 16, 36, 64, 100]
    
    # 2、使用列表推导式
    result = [ele ** 2 for ele in range(1, 11) if ele % 2 == 0]
    print(result)  # 打印 [4, 16, 36, 64, 100]
    ```
