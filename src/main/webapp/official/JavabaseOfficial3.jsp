<%--
  Created by IntelliJ IDEA.
  User: NewBiii
  Date: 2017/4/14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Java 基础语法</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>
<jsp:include page="/official/navigationBar.jsp" flush="true"/>

<div class="my-content" style="position: absolute;">
    <h1>Java 基础语法</h1>
    <p>一个Java程序可以认为是一系列对象的集合，而这些对象通过调用彼此的方法来协同工作。下面简要介绍下类、对象、方法和实例变量的概念。</p>
    <ul>
        <li>对象：对象是类的一个实例，有状态和行为。例如，一条狗是一个对象，它的状态有：颜色、名字、品种；行为有：摇尾巴、叫、吃等。</li>
        <li>类：类是一个模板，它描述一类对象的行为和状态。</li>
        <li>方法：方法就是行为，一个类可以有很多方法。逻辑运算、数据修改以及所有动作都是在方法中完成的。</li>
        <li>实例变量：每个对象都有独特的实例变量，对象的状态由这些实例变量的值决定。</li>
    </ul>
    <h2>第一个Java程序</h2>
    <p>下面看一个简单的Java程序，它将打印字符串&nbsp;Hello World</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span
            class="hljs-title">HelloWorld</span> </span>{
    <span class="hljs-comment">/* 第一个Java程序
     * 它将打印字符串 Hello World
     */</span>
    <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
            class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String []args)</span> </span>{
        System.out.println(<span class="hljs-string">"Hello World"</span>); <span
                class="hljs-comment">// 打印 Hello World</span>
    }
}</code></pre>
    <p>下面将逐步介绍如何保存、编译以及运行这个程序：</p>
    <ul>
        <li>打开Notepad，把上面的代码添加进去；</li>
        <li>把文件名保存为：HelloWorld.java；</li>
        <li>打开cmd命令窗口，进入目标文件所在的位置，假设是C:\</li>
        <li>在命令行窗口键入 javac HelloWorld.java&nbsp; 按下enter键编译代码。如果代码没有错误，cmd命令提示符会进入下一行。（假设环境变量都设置好了）。</li>
        <li>再键入java HelloWorld 按下Enter键就可以运行程序了</li>
    </ul>
    <p>你将会在窗口看到 Hello World</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1">C : &gt; javac HelloWorld.java
C : &gt; java HelloWorld
Hello World</code></pre>
    <p>Gif 图演示：</p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/java-HelloWorld.gif"></p>
    <h2>基本语法</h2>
    <p>编写Java程序时，应注意以下几点：</p>
    <ul>
        <li>大小写敏感：Java是大小写敏感的，这就意味着标识符Hello与hello是不同的。</li>
        <li>类名：对于所有的类来说，类名的首字母应该大写。如果类名由若干单词组成，那么每个单词的首字母应该大写，例如&nbsp;MyFirstJavaClass 。</li>
        <li>方法名：所有的方法名都应该以小写字母开头。如果方法名含有若干单词，则后面的每个单词首字母大写。</li>
        <li>源文件名：源文件名必须和类名相同。当保存文件的时候，你应该使用类名作为文件名保存（切记Java是大小写敏感的），文件名的后缀为.java。（如果文件名和类名不相同则会导致编译错误）。</li>
        <li>主方法入口：所有的Java 程序由public static void main(String []args)方法开始执行。</li>
    </ul>
    <h2>Java标识符</h2>
    <p>Java所有的组成部分都需要名字。类名、变量名以及方法名都被称为标识符。</p>
    <p>关于Java标识符，有以下几点需要注意：</p>
    <ul>
        <li>所有的标识符都应该以字母（A-Z或者a-z）,美元符（$）、或者下划线（_）开始</li>
        <li>首字符之后可以是字母（A-Z或者a-z）,美元符（$）、下划线（_）或数字的任何字符组合</li>
        <li>关键字不能用作标识符</li>
        <li>标识符是大小写敏感的</li>
        <li>合法标识符举例：age、$salary、_value、__1_value</li>
        <li>非法标识符举例：123abc、-salary</li>
    </ul>
    <h2>Java修饰符</h2>
    <p>像其他语言一样，Java可以使用修饰符来修饰类中方法和属性。主要有两类修饰符：</p>
    <ul>
        <li>访问控制修饰符 : default, public , protected, private</li>
        <li>非访问控制修饰符 : final, abstract, strictfp</li>
    </ul>
    <p>在后面的章节中我们会深入讨论Java修饰符。</p>
    <h2>Java变量</h2>
    <p>Java中主要有如下几种类型的变量<br></p>
    <ul>
        <li>局部变量</li>
        <li>类变量（静态变量）</li>
        <li>成员变量（非静态变量）</li>
    </ul>
    <h2>Java数组</h2>
    <p>数组是储存在堆上的对象，可以保存多个同类型变量。在后面的章节中，我们将会学到如何声明、构造以及初始化一个数组。</p>
    <h2>Java枚举</h2>
    <p>Java 5.0引入了枚举，枚举限制变量只能是预先设定好的值。使用枚举可以减少代码中的bug。</p>
    <p>例如，我们为果汁店设计一个程序，它将限制果汁为小杯、中杯、大杯。这就意味着它不允许顾客点除了这三种尺寸外的果汁。</p>
    <h3>实例</h3>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-class"><span
            class="hljs-keyword">class</span> <span class="hljs-title">FreshJuice</span> </span>{
   <span class="hljs-keyword">enum</span> FreshJuiceSize{ SMALL, MEDIUM , LARGE }
   FreshJuiceSize size;
}

<span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span
                class="hljs-title">FreshJuiceTest</span> </span>{
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
           class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String []args)</span></span>{
      FreshJuice juice = <span class="hljs-keyword">new</span> FreshJuice();
      juice.size = FreshJuice.FreshJuiceSize.MEDIUM  ;
   }
}</code></pre>
    <p>注意：枚举可以单独声明或者声明在类里面。方法、变量、构造函数也可以在枚举中定义。</p>
    <h2>Java关键字</h2>
    <p>下面列出了Java保留字。这些保留字不能用于常量、变量、和任何标识符的名称。</p>
    <table>
        <tbody>
        <tr>
            <th>关键字</th>
            <th>描述</th>
        </tr>
        <tr>
            <td>abstract</td>
            <td>抽象方法，抽象类的修饰符</td>
        </tr>
        <tr>
            <td>assert</td>
            <td>断言条件是否满足</td>
        </tr>
        <tr>
            <td>boolean</td>
            <td>布尔数据类型</td>
        </tr>
        <tr>
            <td>break</td>
            <td>跳出循环或者label代码段</td>
        </tr>
        <tr>
            <td>byte</td>
            <td>8-bit 有符号数据类型</td>
        </tr>
        <tr>
            <td>case</td>
            <td>switch语句的一个条件</td>
        </tr>
        <tr>
            <td>catch</td>
            <td>和try搭配扑捉异常信息</td>
        </tr>
        <tr>
            <td>char</td>
            <td>16-bit Unicode字符数据类型</td>
        </tr>
        <tr>
            <td>class</td>
            <td>定义类</td>
        </tr>
        <tr>
            <td>const</td>
            <td>未使用</td>
        </tr>
        <tr>
            <td>continue</td>
            <td>不执行循环体剩余部分</td>
        </tr>
        <tr>
            <td>default</td>
            <td>switch语句中的默认分支</td>
        </tr>
        <tr>
            <td>do</td>
            <td>循环语句，循环体至少会执行一次</td>
        </tr>
        <tr>
            <td>double</td>
            <td>64-bit双精度浮点数</td>
        </tr>
        <tr>
            <td>else</td>
            <td>if条件不成立时执行的分支</td>
        </tr>
        <tr>
            <td>enum</td>
            <td>枚举类型</td>
        </tr>
        <tr>
            <td>extends</td>
            <td>表示一个类是另一个类的子类</td>
        </tr>
        <tr>
            <td>final</td>
            <td>表示一个值在初始化之后就不能再改变了<br>表示方法不能被重写，或者一个类不能有子类</td>
        </tr>
        <tr>
            <td>finally</td>
            <td>为了完成执行的代码而设计的，主要是为了程序的健壮性和完整性，无论有没有异常发生都执行代码。</td>
        </tr>
        <tr>
            <td>float</td>
            <td>32-bit单精度浮点数</td>
        </tr>
        <tr>
            <td>for</td>
            <td>for循环语句</td>
        </tr>
        <tr>
            <td>goto</td>
            <td>未使用</td>
        </tr>
        <tr>
            <td>if</td>
            <td>条件语句</td>
        </tr>
        <tr>
            <td>implements</td>
            <td>表示一个类实现了接口</td>
        </tr>
        <tr>
            <td>import</td>
            <td>导入类</td>
        </tr>
        <tr>
            <td>instanceof</td>
            <td>测试一个对象是否是某个类的实例</td>
        </tr>
        <tr>
            <td>int</td>
            <td>32位整型数</td>
        </tr>
        <tr>
            <td>interface</td>
            <td>接口，一种抽象的类型，仅有方法和常量的定义</td>
        </tr>
        <tr>
            <td>long</td>
            <td>64位整型数</td>
        </tr>
        <tr>
            <td>native</td>
            <td>表示方法用非java代码实现</td>
        </tr>
        <tr>
            <td>new</td>
            <td>分配新的类实例</td>
        </tr>
        <tr>
            <td>package</td>
            <td>一系列相关类组成一个包</td>
        </tr>
        <tr>
            <td>private</td>
            <td>表示私有字段，或者方法等，只能从类内部访问</td>
        </tr>
        <tr>
            <td>protected</td>
            <td>表示字段只能通过类或者其子类访问<br>子类或者在同一个包内的其他类</td>
        </tr>
        <tr>
            <td>public</td>
            <td>表示共有属性或者方法</td>
        </tr>
        <tr>
            <td>return</td>
            <td>方法返回值</td>
        </tr>
        <tr>
            <td>short</td>
            <td>16位数字</td>
        </tr>
        <tr>
            <td>static</td>
            <td>表示在类级别定义，所有实例共享的</td>
        </tr>
        <tr>
            <td>strictfp</td>
            <td>浮点数比较使用严格的规则</td>
        </tr>
        <tr>
            <td>super</td>
            <td>表示基类</td>
        </tr>
        <tr>
            <td>switch</td>
            <td>选择语句</td>
        </tr>
        <tr>
            <td>synchronized</td>
            <td>表示同一时间只能由一个线程访问的代码块</td>
        </tr>
        <tr>
            <td>this</td>
            <td>表示调用当前实例<br>或者调用另一个构造函数</td>
        </tr>
        <tr>
            <td>throw</td>
            <td>抛出异常</td>
        </tr>
        <tr>
            <td>throws</td>
            <td>定义方法可能抛出的异常</td>
        </tr>
        <tr>
            <td>transient</td>
            <td>修饰不要序列化的字段</td>
        </tr>
        <tr>
            <td>try</td>
            <td>表示代码块要做异常处理或者和finally配合表示是否抛出异常都执行finally中的代码</td>
        </tr>
        <tr>
            <td>void</td>
            <td>标记方法不返回任何值</td>
        </tr>
        <tr>
            <td>volatile</td>
            <td>标记字段可能会被多个线程同时访问，而不做同步</td>
        </tr>
        <tr>
            <td>while</td>
            <td>while循环</td>
        </tr>
        </tbody>
    </table>
    <h2>Java注释</h2>
    <p>类似于C/C++，Java也支持单行以及多行注释。注释中的字符将被Java编译器忽略。</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span
            class="hljs-title">HelloWorld</span> </span>{
   <span class="hljs-comment">/* 这是第一个Java程序
    *它将打印Hello World
    * 这是一个多行注释的示例
    */</span>
    <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
            class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String []args)</span></span>{
       <span class="hljs-comment">// 这是单行注释的示例</span>
       <span class="hljs-comment">/* 这个也是单行注释的示例 */</span>
       System.out.println(<span class="hljs-string">"Hello World"</span>);
    }
}</code></pre>
    <h2>Java 空行</h2>
    <p>空白行，或者有注释的行，Java编译器都会忽略掉。</p>
    <h2>继承</h2>
    <p>在Java中，一个类可以由其他类派生。如果你要创建一个类，而且已经存在一个类具有你所需要的属性或方法，那么你可以将新创建的类继承该类。</p>
    <p>利用继承的方法，可以重用已存在类的方法和属性，而不用重写这些代码。被继承的类称为超类（super class），派生类称为子类（subclass）。</p>
    <h2>接口</h2>
    <p>在Java中，接口可理解为对象间相互通信的协议。接口在继承中扮演着很重要的角色。</p>
    <p>接口只定义派生要用到的方法，但是方法的具体实现完全取决于派生类。</p>
    <h2>Java 源程序与编译型运行区别</h2>
    <p></p>
    <p>如下图所示：</p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/ZSSDMld.png"></p>
    <p><br></p>
</div>
<script src="/croppic/jquery-2.1.3.min.js"></script>
<script src="../layui/layui.js"></script>
<script src="/js/my.js"></script>

</body>
</html>
