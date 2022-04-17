---
title: 15.8 内置库json
date: 2022-03-08 10:10:59
categories: 测试学习
tags: [python编程语言]
---

# JSON

- `JSON` 是用于存储和交换数据的语法，是一种轻量级的数据交换格式。
- 使用场景
    - 接口数据传输
    - 序列化
    - 配置文件

## JSON 结构

### 1. 键值对形式

是一个无序的`键:值`对集合。一个对象以`{`开始，`}`结束。每个键后跟一个`:`，`键:值`对之间使用`,`分隔。

```json
{"age": 12, "name": "张三", "address":{"sheng":"湖南","shi":"张家界"}}
```

### 2. 数组形式

是`值`的有序集合。一个数组以 `[` 开始，`]` 结束。值之间使用 `,` 分隔。

```json
["a","b","c"]
```

####  Json格式嵌套

`值`可以是双引号括起来的字符串（string）、数值（number）、true、false、null、对象（object）或者数组（array）。这些结构可以嵌套。

```json
[
    "吃饭","睡觉","打豆豆",
    {
        "age": 15, 
        "name": "李四",
        "哈哈":["ss","sa"]
	},
    "喜欢悠哉悠哉独自在"
]
```



## Python 与 JSON 数据类型对应 [转换表](https://docs.python.org/zh-cn/3.10/library/json.html#py-to-json-table)

|    Python    |  JSON  |    说明     |
| :----------: | :----: | :---------: |
|     dict     | object |    字典     |
| list ，tuple | array  |    序列     |
|     str      | string |   字符串    |
| int ，float  | number |  数字类型   |
|     True     |  true  | 布尔值True  |
|    False     | false  | 布尔值False |
|     None     |  null  |    空值     |

## json 库

- 可以从字符串或文件中解析 `JSON`
- 该库解析 `JSON` 后将其转为 `Python` 字典或者列表

## 常用方法

### 1.`dump()`

 将Python 对象编码，并将数据写入 json 文件中

```python
json.dump(obj, fp, *, skipkeys=False, ensure_ascii=True, check_circular=True, allow_nan=True, cls=None, indent=None, separators=None, default=None, sort_keys=False, **kw)
```

使用这个 `转换表` 将 *obj* 序列化为 JSON 格式化流形式的 *fp*

```python
# 写入 JSON 数据，在代码当前目录生成一个 data.json 的文件
with open('data.json', 'w') as f:
    json.dump(data, f, ensure_ascii=False)
```

结果：`data.json`

```json
["吃饭", "睡觉", "打豆豆", {"age": 15, "name": "李四", "哈哈": ["ss", "sa"]}, "喜欢悠哉悠哉独自在"]
```

### 2.`dumps()`

将 Python 对象编码成 JSON **字符串**

```python
json.dumps(obj, *, skipkeys=False, ensure_ascii=True, check_circular=True, allow_nan=True, cls=None, indent=None, separators=None, default=None, sort_keys=False, **kw)
```

使用这个  `转换表`将 *obj* 序列化为 JSON 格式的 [`str`](https://docs.python.org/zh-cn/3.10/library/stdtypes.html#str)。 其参数的含义与 [`dump()`](https://docs.python.org/zh-cn/3.10/library/json.html#json.dump) 中的相同。

> JSON 中的键-值对中的键永远是 [`str`](https://docs.python.org/zh-cn/3.10/library/stdtypes.html#str) 类型的。当一个对象被转化为 JSON 时，字典中所有的键都会被强制转换为字符串。这所造成的结果是字典被转换为 JSON 然后转换回字典时可能和原来的不相等。换句话说，如果 `x` 具有非字符串的键，则有 `loads(dumps(x)) != x`。

#### dumps 常用参数

- `indent`：根据数据格式缩进显示，默认为 `None`，没有缩进
- `ensure_ascii`：对中文使用 `ASCII` 编码，默认为 `True

```python
import json

# 定义 python 结构
data = ["吃饭", "睡觉", "打豆豆", {"age": 15, "name": "李四", "哈哈": ["ss", "sa"]}, "喜欢悠哉悠哉独自在"]

# 将 python 对象编码为 JSON 字符串，indent——缩进格数，ensure_ascii——是否用ASCII编码(有中文时选择False)
json_data = json.dumps(data, indent=4, ensure_ascii=False)
print(json_data)
print(type(json_data))
```

结果：

```
[
    "吃饭",
    "睡觉",
    "打豆豆",
    {
        "age": 15,
        "name": "李四",
        "哈哈": [
            "ss",
            "sa"
        ]
    },
    "喜欢悠哉悠哉独自在"
]
<class 'str'>
```



### 3.`load()`

从 json 文件中读取数据并解码为 Python 对象

使用这个  `转换表`将 *fp* (一个支持 `.read()` 并包含一个 JSON 文档的 [text file](https://docs.python.org/zh-cn/3.10/glossary.html#term-text-file) 或者 [binary file](https://docs.python.org/zh-cn/3.10/glossary.html#term-binary-file) 反序列化为一个 Python 对象

```python
json.load(fp, *, cls=None, object_hook=None, parse_float=None, parse_int=None, parse_constant=None, object_pairs_hook=None, **kw)
```

```python
with open('data.json', 'r') as f:
    data = json.load(f)
    print(data)
    print(type(data))
```

结果：

```json
['吃饭', '睡觉', '打豆豆', {'age': 15, 'name': '李四', '哈哈': ['ss', 'sa']}, '喜欢悠哉悠哉独自在']
<class 'list'>
```



### 4.`loads()`

解码 JSON 数据（字符串），该函数返回 **Python 对象**

使用这个  `转换表` 将 *s* (一个包含 JSON 文档的 [`str`](https://docs.python.org/zh-cn/3.10/library/stdtypes.html#str), [`bytes`](https://docs.python.org/zh-cn/3.10/library/stdtypes.html#bytes) 或 [`bytearray`](https://docs.python.org/zh-cn/3.10/library/stdtypes.html#bytearray) 实例) 反序列化为 Python 对象。其他参数的含义与 [`load()`](https://docs.python.org/zh-cn/3.10/library/json.html#json.load) 中的相同。

如果反序列化的数据不是有效 JSON 文档，引发 [`JSONDecodeError`](https://docs.python.org/zh-cn/3.10/library/json.html#json.JSONDecodeError) 错误。

```python
json.loads(s, *, cls=None, object_hook=None, parse_float=None, parse_int=None, parse_constant=None, object_pairs_hook=None, **kw)
```







