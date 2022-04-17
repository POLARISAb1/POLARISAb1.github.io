---
title: 5.1 业务架构分析工具——plantuml
date: 2022-02-21 10:35:03
categories: 测试学习
tags: [测试流程与实战]

---

# plantuml

- UML：统一建模语言

- plantuml：第三方插件工具

- plantuml官网：<https://plantuml.com/zh/>

- plantuml中文文档：<https://ceshiren.com/t/topic/4530>

- plantuml在线绘图地址：[https://plantuml.ceshiren.com](https://plantuml.ceshiren.com/)

# 时序图

例子1：

<img src="5-1-业务架构分析工具——plantuml/image-20220214104652900-16448069747445-16454110002911.png" alt="image-20220214104652900" style="zoom:50%;" />

```startuml
@startuml
Bob -> Alice : hello      冒号加空格
@enduml
```

例子2：

<img src="5-1-业务架构分析工具——plantuml/image-20220214104746063-16448069793896-16454110002922.png" alt="image-20220214104746063" style="zoom:50%;" />

> ```startuml
> @startuml
> Alice -> Bob : Hi Bob
> Bob --> Alice : Hi Alice
> Alice -> Bob : how are you?
> Bob --> Alice : Fine,thanks.
> （Alice <-- Bob·······）
> @enduml
> ```

# 时序图常用关键字

- 声明对象：actor 、database

<img src="5-1-业务架构分析工具——plantuml/image-20220214104949068-16454110002924.png" alt="image-20220214104949068" style="zoom:50%;" />

```startuml
@startuml
actor user
database db
Alice -> Bob : Hi Bob
Bob --> Alice : Hi Alice
Alice -> Bob : how are you?
Bob --> Alice : Fine,thanks.
@enduml
```

- 消息数字序号：autonumber

<img src="5-1-业务架构分析工具——plantuml/image-20220214105008012-16454110002923.png" alt="image-20220214105008012" style="zoom:50%;" />

```startuml
@startuml
autonumber
actor user
database db
Alice -> Bob : Hi Bob
Bob --> Alice : Hi Alice
Alice -> Bob : how are you?
Bob --> Alice : Fine,thanks.
@enduml
```

- 消息分组：alt/else/end

<img src="5-1-业务架构分析工具——plantuml/image-20220214105017000-164480706894516-16454110002925.png" alt="image-20220214105017000" style="zoom:50%;" />

```startuml
@startuml
autonumber
Alice -> Bob : 认证请求
alt 成功情况
Bob --> Alice : 认证接受
else 失败情况
Bob --> Alice : 认证失败
else 其他情况
Bob --> Alice : 请重复
end
@enduml
```

# 用例图

例1

<img src="5-1-业务架构分析工具——plantuml/image-20220214105036828-164480707223117-16454110002926.png" alt="image-20220214105036828" style="zoom:40%;" />

```startuml
@startuml
left to right direction
> 从左到右去展示
skinparam packagestyle rectangle
> 整个形状是长方形
actor customer
actor clerk
> 两个角色customer和clerk
rectangle checkout {
> 长方形里包括
    customer -- (checkout)
    > 具体的用例写在小括号中，--是实线
    (checkout) .> (payment) : include
    > .>是虚线
    (help) .> (checkout) : extends
    (checkout) -- clerk
}
@enduml
```

# 活动图

<img src="5-1-业务架构分析工具——plantuml/image-20220214105051030-16454110002927.png" alt="image-20220214105051030" style="zoom:50%;" />

例1：

> 新语法

```startuml
@startuml
start
repeat
> 循环用repeat
    :read data;
    > 每一个步骤 ：开头 ; 结束
:generate diagrams;
repeat while (more data?)
> 循环结尾repeat while 加上对应的条件，小括号内
stop
@enduml
```

plantuml还支持思维导图

例1：

```mermaid
graph LR
A(根节点)-->B(第一级子节点1)
A-->C(第一级子节点2)
B-->D(第二级子节点1)
B-->E(第二级子节点2)
```



```startuml
@startmindmap
* 根节点
    * 第一级子节点1
        * 第二级子节点1
        * 第二级子节点2
    * 第一级子节点2
@endmindmap
```

