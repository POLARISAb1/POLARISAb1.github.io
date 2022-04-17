---
httitle: 24.1 HTML讲解
date: 2022-03-29 11:24:43
tags:



---

# 1. HTML基本概念

1.1 什么是web

- web就是world wide web的缩写，称之为全球广域网，俗称WWW

- 可以理解为是网站服务

- 网站我们可以认是由多个网页组合在一起而形成一种服务

- ewb前端就是来负责一个网站当中前台网页里的内容

- 网页就是由前端工程师使用HTML语言编写而成的一种文件，它里面会包含

    文字、图片、超链接、声音、视频…

1.2 什么是HTML

- 超文本标记语言（Hyper Text Markyp Language）
- 描述网页的语言

1.3 HTML查看工具

- 浏览器-开发者工具

# 2. HTML基本结构

```html
<！DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    
</body>
</html>
```



# 3. HTML基本标签

## 3.1 标签

- 双标签

    ```html
    <标签名称></标签名称>
    ```

- 单标签

    ```html
    <标签名/>
    ```

## 3.2 标签的属性

- 基本格式

    ```html
    <标签名 属性1="属性值1" 属性2=" 属性值2"></标签名>
    ```

- 标签可以拥有多个属性

- 属性必须写在开始标签中，位于标签名后面

- 属性之间不区分顺序

- 标签名与属性、属性与属性之间使用空格隔开

- 任何属性都有默认值，省略该属性表示使用默认值

### [1] HTML全局属性

- class：规定元素的类名
- id：规定元素的<font color='red’>唯一</font>id
- lang：设置元素中内容的语言代码
- style：规定元素的行内样式
- title：规定元素的额外信息

### [2] HTML事件属性-窗口事件

- 使HTML事件触发浏览器中的行为，比方说当用户点击某个HTML元素时启动一段JavaScript
- 适用于<body>标签
- onblur：当窗口失去焦点时运行脚本
- onfocus：当窗口获得焦点时运行脚本
- onload：当文档加载时运行脚本

### [3] HTML事件属性-表单事件

- form表单内元素
    - onblur：当窗口失去焦点时运行脚本
    - onchange：当元素改变时运行脚本
    - onfocus：当窗口获得焦点时运行脚本
    - onreset：当表单重置时运行脚本。HTML5不支持
    - onselect：当选取元素时运行脚本
    - onsubmit：当提交表单时运行脚本

### [4] HTML事件属性-键盘事件

- onkeydown：当按下按键时运行脚本
- onkeypress：当按下并松开按键时运行脚本
- onkeyup：当松开按键时运行脚本

### [5] HTML事件属性-鼠标事件

- onclick：当单击鼠标时运行脚本
- ondblclick：当双击鼠标时运行脚本
- onmousedown：当按下鼠标按钮时运行脚本
- onmousemove：当鼠标指针移动时运行脚本
- onmouseout：当鼠标指针移出元素时运行脚本
- onmouseover：当鼠标指针移至元素之上时运行脚本
- onmouseup：当松开鼠标按钮时运行脚本

### [6] HTML事件属性-多媒体事件

- onabort：：当发生中止事件时运行脚本

## 3.3 注释标签

- 标签：

    ```html
    <!--注释内容->
    ```

- 作用：在源文档中插入注释。注释不会在浏览器中显示

## 3.4 文档标题标签

- 标签：

    ```html
    <title></title>
    ```

- 作用

    - 定义浏览器工具栏中的标题
    - 提供页面被添加到收藏夹时的标题
    - 显示在搜索引擎结果中的页面标题

## 3.5 标题标签

- 标签：

    ```html
    <h1>-<h6>
    ```

    ```html
    <h1>这是标题1</h1>
    <h2>这是标题2</h2>
    ```

- 作用：用来定义HTML标题

    - `<h1>`定义重要等级最高的标题。
    - `<h6>`定义重要等级最低的标题

- 属性：全局属性、事件属性

    ```html
    <h1 id="site-text-logo" class="text-logo">测试人社区</h1>
    ```

## 3.6 段落标签

- 标签：

    ```html
    <p></p>
    ```

- 作用：标签定义段落

    ```html
    <p class="lh">...</p>
    ```

- 属性：全局属性、事件属性

## 3.7 容器标签

- 标签：

    ```html
    <span></span>
    ```

- 作用：用于对文档中的行内元素进行组合，提供了一种将文本的一部分或者文
    档的一部分独立出来的方式

- 属性：全局属性、事件属性

    ```html
    <span id="ember123" class="ember-view">...</span>
    ```

## 3.8 容器标签

- 标签：

    ```html
    <div></div>
    ```

- 作用：

    - 标签定义HTML文档中的一个分隔区块或者一个区域部分
    - `<div>`父元素经常与CSS一起使用，用来布局网页

- 属性：全局属性、事件属性

    ```html
    <div class="contents clearfix">...</div>
    ```



## 3.9 图像标签

- 标签：

    ```html
    <img/>
    ```

- 作用：标签定义HTML页面中的图像

- 属性：

    - src：规定显示图像的URL（必须）
    - alt：规定图像的替代文本（必须）

    - title：鼠标悬停于图像时显示的文本
    - width：图像的宽度
    - height：图像的高度
    - border：设置图像边框的宽度

    ```html
    <img alt width="32" height="32" src="/lettet avatar/v4/64.png" title="图片" class="avatar">
    ```

## 3.10 超链接标签

- 标签：

- ```html
    <a></a>
    ```

- 作用：标签定义超链接，用于从一个页面链接到另一个页面

- 属性：全局属性、事件属性

    - href：规定链接的目标URL

        ```html
        <a href="/search" title="搜索主题、帖子、用户或分类" aria-label="搜索主题、帖子、用户或分类" id="search-button" class="icon btn-flat">..</a>
        ```

## 3.11 列表标签-无序列表

- 标签：

    ```html
    <ul><li>...</1i><li>..</1i></ul>
    ```

- 作用：定义无序列表

- `<ul>`标签与`<li>`标签一起使用，创建无序列表

- 属性：全局属性、事件属性

    ```html
    <ul>
    	<li>...</li>
        <li>...</li>
        <li>...</li>
        <li>...</li>
    </ul>
    ```

## 3.12 列表标签-有序列表

- 标签：

    ```html
    <ol><li>...</1i><1i>...</1i></ol>
    ```

- 作用：

    - 定义了一个有序列表，列表排序以数字来显示
    - 使用`<li>`标签来定义列表选项

- 属性：全局属性、事件属性

    ```html
    <ol id="ember104" class="category-breadcrumb">
    	<li id="ember106" class="select-kit">...</li>
    	<li id="ember111" style="display:none；" class="select-kit ">...</li>
    <!---->
    </ol>
    ```

## 3.13 表格标签

- 标签：

    - 表格：

        ```html
        <table></table>
        ```

    - 行：

        ```html
        <tr></tr>
        ```

    - 单元格：

        ```html
        <td></td>
        ```

    - 作用：定义表格。

- 属性：全局属性、事件属性

    - border：规定表格单元是否拥有边框

    ```html
    <table id="ember137" class="topic-list ember-view">
        <thead>
            <tr>
                <th class="default">..</th>
                <th class="posters"></th>
                <th class="posts sortable num">回复</th>
                <th class="views sortable num">浏览</th>
                <th class="activity sortable num">活动</th>
            </tr>
        </thead>
        <！---->
        <tbody>...</tbody>
    </table>
    ```

## 3.14 表单域

- 标签：

    ```html
    <form></form>
    ```

- 作用：创建供用户输入的HTML

- 表单属性：全局属性、事件属性。

    - action：指定接收并处理表单信息的服务器url地址
    - method：表单数据的提交方式。
    - name：指定表单名称

    ```html
    <form id="hidden-login-form" method="post" action="/login" style="display:none；">...</form>
    ```



## 3.15 表单标签

- 标签：

    ```html
    <input>
    ```

- 作用：规定了用户可以在其中输入数据的输入字段，输入字段可通过多种方式改变,取决于`type`属性

- 属性：全局属性、事件属性

    - type：规定要显示的`<input>`元素的类型
        - text：单行文本输入框（不换行的）
        - password：密码输人框
        - radio：单选框（配合name可以实现单选效果
        - checkbox：复选框
        - button：普通按钮
        - submit：提交按钮
        - reset：重置按钮
        - image：图像形式的提交按钮
        - file：文件域，点击之后打开文件选择器
    - name：控件名称，`name`相同则表示是同一组数据
    - value：指定`<input>`元素`value`的值
    - size：显示大小
    - checked：是否被选中
    - maxlength：控制输入的最大字符数量

    ```html
    <input name="username" type="text" id="signin_username">
    <input name="password" type="password" id="signin_password">
    <input name="redirect" type="hidden">
    <input type="submit" id="signin-button" value="登录">
    ```

## 3.16 文本域标签

- 标签：

    ```html
    <textarea></textarea>
    ```

- 作用：定义一个多行的文本输人控件

- 属性：全局属性、事件属性

    - cols：规定文本区域内可见的宽度
    - disabled：规定禁用文本区域
    - name：规定文本区域的名称
    - readonly：规定文本区域为只读
    - rows：规定文本区域内可见的行数
    - placeholder：规定一个简短的提示，描述文本区域期望的输入值

    ```html
    <textarea aria-label="在此键入" autocomplete：="discourse" tabindex="4" placeholder="在此键入" id="ember1874" class="d-editor">
    </textarea>
    ```

## 3.17 下拉菜单

- 标签：

    ```html
    <select><option>..</option></select>
    ```

- 作用：

    - 用来创建下拉列表
    - `<select>`元素中的`<option>`标签定义了列表中的可用选项

- 属性：全局属性、事件属性

    - disabled：当该属性为true时，会禁用下拉列表
    - multiple：当该属性为true时，可选择多个选项
    - name：定义下拉列表的名称
    - size：规定下拉列表中可见选项的数目
