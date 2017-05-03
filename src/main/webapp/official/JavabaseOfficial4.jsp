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
    <title>Java 对象和类</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>
<jsp:include page="/official/navigationBar.jsp" flush="true"/>
<div class="my-content" style="position: absolute;">
    <h1>Java 对象和类</h1>
    <p>Java作为一种面向对象语言。支持以下基本概念：</p>
    <ul>
        <li>多态</li>
        <li>继承</li>
        <li>封装</li>
        <li>抽象</li>
        <li>类</li>
        <li>对象</li>
        <li>实例</li>
        <li>方法</li>
        <li>重载</li>
    </ul>
    <p>本节我们重点研究对象和类的概念。</p>
    <ul>
        <li>对象：对象是类的一个实例（对象不是找个女朋友），有状态和行为。例如，一条狗是一个对象，它的状态有：颜色、名字、品种；行为有：摇尾巴、叫、吃等。</li>
        <li>类：类是一个模板，它描述一类对象的行为和状态。</li>
    </ul>
    <p>下图中男孩女孩为类，而具体的每个人为该类的对象：</p>
    <p><img style="max-width:100%;" src="http://www.runoob.com/wp-content/uploads/2013/12/object-class.jpg"></p>
    <h2>Java中的对象</h2>
    <p>现在让我们深入了解什么是对象。看看周围真实的世界，会发现身边有很多对象，车，狗，人等等。所有这些对象都有自己的状态和行为。</p>
    <p>拿一条狗来举例，它的状态有：名字、品种、颜色，行为有：叫、摇尾巴和跑。</p>
    <p>对比现实对象和软件对象，它们之间十分相似。</p>
    <p>软件对象也有状态和行为。软件对象的状态就是属性，行为通过方法体现。</p>
    <p>在软件开发中，方法操作对象内部状态的改变，对象的相互调用也是通过方法来完成。</p>
    <h2>Java中的类</h2>
    <p>类可以看成是创建Java对象的模板。</p>
    <p>通过下面一个简单的类来理解下Java中类的定义：</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Dog</span></span>{
  String breed;
  <span class="hljs-keyword">int</span> age;
  String color;
  <span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">barking</span><span
          class="hljs-params">()</span></span>{
  }

  <span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">hungry</span><span
          class="hljs-params">()</span></span>{
  }

  <span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">sleeping</span><span
          class="hljs-params">()</span></span>{
  }
}
</code></pre>
    <p>一个类可以包含以下类型变量：</p>
    <ul>
        <li>局部变量：在方法、构造方法或者语句块中定义的变量被称为局部变量。变量声明和初始化都是在方法中，方法结束后，变量就会自动销毁。</li>
        <li>成员变量：成员变量是定义在类中，方法体之外的变量。这种变量在创建对象的时候实例化。成员变量可以被类中方法、构造方法和特定类的语句块访问。</li>
        <li>类变量：类变量也声明在类中，方法体之外，但必须声明为static类型。</li>
    </ul>
    <p>一个类可以拥有多个方法，在上面的例子中：barking()、hungry()和sleeping()都是Dog类的方法。</p>
    <h2>构造方法</h2>
    <p>每个类都有构造方法。如果没有显式地为类定义构造方法，Java编译器将会为该类提供一个默认构造方法。</p>
    <p>在创建一个对象的时候，至少要调用一个构造方法。构造方法的名称必须与类同名，一个类可以有多个构造方法。</p>
    <p>下面是一个构造方法示例：</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Puppy</span></span>{
    <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-title">Puppy</span><span
            class="hljs-params">()</span></span>{
    }

    <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-title">Puppy</span><span
            class="hljs-params">(String name)</span></span>{
        <span class="hljs-comment">// 这个构造器仅有一个参数：name</span>
    }
}</code></pre>
    <h2>创建对象</h2>
    <p>对象是根据类创建的。在Java中，使用关键字new来创建一个新的对象。创建对象需要以下三步：</p>
    <ul>
        <li>声明：声明一个对象，包括对象名称和对象类型。</li>
        <li>实例化：使用关键字new来创建一个对象。</li>
        <li>初始化：使用new创建对象时，会调用构造方法初始化对象。</li>
    </ul>
    <p>下面是一个创建对象的例子：</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Puppy</span></span>{
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-title">Puppy</span><span
           class="hljs-params">(String name)</span></span>{
      <span class="hljs-comment">//这个构造器仅有一个参数：name</span>
      System.out.println(<span class="hljs-string">"小狗的名字是 : "</span> + name );
   }
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
           class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String []args)</span></span>{
      <span class="hljs-comment">// 下面的语句将创建一个Puppy对象</span>
      Puppy myPuppy = <span class="hljs-keyword">new</span> Puppy( <span class="hljs-string">"tommy"</span> );
   }
}</code></pre>
    <p>编译并运行上面的程序，会打印出下面的结果：</p>
    <blockquote><p>小狗的名字是 : tommy</p></blockquote>
    <h2>访问实例变量和方法</h2>
    <p>通过已创建的对象来访问成员变量和成员方法，如下所示：</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-comment">/* 实例化对象 */</span>
ObjectReference = <span class="hljs-keyword">new</span> Constructor();
<span class="hljs-comment">/* 访问其中的变量 */</span>
ObjectReference.variableName;
<span class="hljs-comment">/* 访问类中的方法 */</span>
ObjectReference.MethodName();</code></pre>
    <h2>实例</h2>
    <p>下面的例子展示如何访问实例变量和调用成员方法：</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Puppy</span></span>{
   <span class="hljs-keyword">int</span> puppyAge;
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-title">Puppy</span><span
           class="hljs-params">(String name)</span></span>{
      <span class="hljs-comment">// 这个构造器仅有一个参数：name</span>
      System.out.println(<span class="hljs-string">"小狗的名字是 : "</span> + name );
   }

   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">setAge</span><span class="hljs-params">( <span
           class="hljs-keyword">int</span> age )</span></span>{
       puppyAge = age;
   }

   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">int</span> <span
           class="hljs-title">getAge</span><span class="hljs-params">( )</span></span>{
       System.out.println(<span class="hljs-string">"小狗的年龄为 : "</span> + puppyAge );
       <span class="hljs-keyword">return</span> puppyAge;
   }

   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
           class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String []args)</span></span>{
      <span class="hljs-comment">/* 创建对象 */</span>
      Puppy myPuppy = <span class="hljs-keyword">new</span> Puppy( <span class="hljs-string">"tommy"</span> );
      <span class="hljs-comment">/* 通过方法来设定age */</span>
      myPuppy.setAge( <span class="hljs-number">2</span> );
      <span class="hljs-comment">/* 调用另一个方法获取age */</span>
      myPuppy.getAge( );
      <span class="hljs-comment">/*你也可以像下面这样访问成员变量 */</span>
      System.out.println(<span class="hljs-string">"变量值 : "</span> + myPuppy.puppyAge );
   }
}</code></pre>
    <p>编译并运行上面的程序，产生如下结果：</p>
    <blockquote><p>小狗的名字是 : tommy</p></blockquote>
    <blockquote><p>小狗的年龄为 : 2</p></blockquote>
    <blockquote><p>变量值 : 2</p></blockquote>
    <h2>源文件声明规则</h2>
    <p>在本节的最后部分，我们将学习源文件的声明规则。当在一个源文件中定义多个类，并且还有import语句和package语句时，要特别注意这些规则。</p>
    <ul>
        <li>一个源文件中只能有一个public类</li>
        <li>一个源文件可以有多个非public类</li>
        <li>源文件的名称应该和public类的类名保持一致。例如：源文件中public类的类名是Employee，那么源文件应该命名为Employee.java。</li>
        <li>如果一个类定义在某个包中，那么package语句应该在源文件的首行。</li>
        <li>如果源文件包含import语句，那么应该放在package语句和类定义之间。如果没有package语句，那么import语句应该在源文件中最前面。</li>
        <li>import语句和package语句对源文件中定义的所有类都有效。在同一源文件中，不能给不同的类不同的包声明。</li>
    </ul>
    <p>类有若干种访问级别，并且类也分不同的类型：抽象类和final类等。这些将在访问控制章节介绍。</p>
    <p>除了上面提到的几种类型，Java还有一些特殊的类，如：内部类、匿名类。</p>
    <h2>Java包</h2>
    <p>包主要用来对类和接口进行分类。当开发Java程序时，可能编写成百上千的类，因此很有必要对类和接口进行分类。</p>
    <h2>Import语句</h2>
    <p>在Java中，如果给出一个完整的限定名，包括包名、类名，那么Java编译器就可以很容易地定位到源代码或者类。Import语句就是用来提供一个合理的路径，使得编译器可以找到某个类。</p>
    <p>例如，下面的命令行将会命令编译器载入java_installation/java/io路径下的所有类</p>
    <pre><span>import</span><span> java</span><span>.</span><span>io</span><span>.*;</span></pre>
    <h2>一个简单的例子</h2>
    <p>在该例子中，我们创建两个类：Employee&nbsp;和&nbsp;EmployeeTest。</p>
    <p>首先打开文本编辑器，把下面的代码粘贴进去。注意将文件保存为 Employee.java。</p>
    <p>Employee类有四个成员变量：name、age、designation和salary。该类显式声明了一个构造方法，该方法只有一个参数。</p><h5>Employee.java 文件代码：</h5>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">import</span> java.io.*;

<span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span
                class="hljs-title">Employee</span></span>{
   String name;
   <span class="hljs-keyword">int</span> age;
   String designation;
   <span class="hljs-keyword">double</span> salary;
   <span class="hljs-comment">// Employee 类的构造器</span>
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-title">Employee</span><span
           class="hljs-params">(String name)</span></span>{
      <span class="hljs-keyword">this</span>.name = name;
   }
   <span class="hljs-comment">// 设置age的值</span>
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">empAge</span><span class="hljs-params">(<span
           class="hljs-keyword">int</span> empAge)</span></span>{
      age =  empAge;
   }
   <span class="hljs-comment">/* 设置designation的值*/</span>
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">empDesignation</span><span class="hljs-params">(String empDesig)</span></span>{
      designation = empDesig;
   }
   <span class="hljs-comment">/* 设置salary的值*/</span>
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">empSalary</span><span class="hljs-params">(<span class="hljs-keyword">double</span> empSalary)</span></span>{
      salary = empSalary;
   }
   <span class="hljs-comment">/* 打印信息 */</span>
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">printEmployee</span><span class="hljs-params">()</span></span>{
      System.out.println(<span class="hljs-string">"名字:"</span>+ name );
      System.out.println(<span class="hljs-string">"年龄:"</span> + age );
      System.out.println(<span class="hljs-string">"职位:"</span> + designation );
      System.out.println(<span class="hljs-string">"薪水:"</span> + salary);
   }
}</code></pre>
    <p>程序都是从main方法开始执行。为了能运行这个程序，必须包含main方法并且创建一个实例对象。</p>
    <p>下面给出EmployeeTest类，该类实例化2个 Employee 类的实例，并调用方法设置变量的值。</p>
    <p>将下面的代码保存在 EmployeeTest.java文件中。</p><h5>EmployeeTest.java 文件代码：</h5>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">import</span> java.io.*;
<span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span
                class="hljs-title">EmployeeTest</span></span>{

   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
           class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String args[])</span></span>{
      <span class="hljs-comment">/* 使用构造器创建两个对象 */</span>
      Employee empOne = <span class="hljs-keyword">new</span> Employee(<span class="hljs-string">"RUNOOB1"</span>);
      Employee empTwo = <span class="hljs-keyword">new</span> Employee(<span class="hljs-string">"RUNOOB2"</span>);

      <span class="hljs-comment">// 调用这两个对象的成员方法</span>
      empOne.empAge(<span class="hljs-number">26</span>);
      empOne.empDesignation(<span class="hljs-string">"高级程序员"</span>);
      empOne.empSalary(<span class="hljs-number">1000</span>);
      empOne.printEmployee();

      empTwo.empAge(<span class="hljs-number">21</span>);
      empTwo.empDesignation(<span class="hljs-string">"菜鸟程序员"</span>);
      empTwo.empSalary(<span class="hljs-number">500</span>);
      empTwo.printEmployee();
   }
}</code></pre>
    <p>编译这两个文件并且运行 EmployeeTest 类，可以看到如下结果：</p>
    <p></p>
    <pre><span>$ javac </span><span>EmployeeTest</span><span>.</span><span>java
$ java </span><span>EmployeeTest</span><span>
</span><span>名字:</span><span>RUNOOB1
</span><span>年龄:</span><span>26</span><span>
</span><span>职位:高级程序员</span><span>
</span><span>薪水:</span><span>1000.0</span><span>
</span><span>名字:</span><span>RUNOOB2
</span><span>年龄:</span><span>21</span><span>
</span><span>职位:菜鸟程序员</span><span>
</span><span>薪水:</span><span>500.0</span></pre>
    <p><br></p>
</div>
<script src="/croppic/jquery-2.1.3.min.js"></script>
<script src="../layui/layui.js"></script>
<script src="/js/my.js"></script>
</body>
</html>
