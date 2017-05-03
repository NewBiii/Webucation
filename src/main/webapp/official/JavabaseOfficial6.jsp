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
    <title>Java 变量类型</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>
<jsp:include page="/official/navigationBar.jsp" flush="true"/>
<div class="my-content" style="position: absolute;">
    <h1>Java 变量类型</h1>
    <p>在Java语言中，所有的变量在使用前必须声明。声明变量的基本格式如下：</p>
    <p>type identifier [ = value][, identifier [= value] ...] ;</p>
    <p>格式说明：type为Java数据类型。identifier是变量名。可以使用逗号隔开来声明多个同类型变量。</p>
    <p>以下列出了一些变量的声明实例。注意有些包含了初始化过程。</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">int</span> a, b, c;         <span
            class="hljs-comment">// 声明三个int型整数：a、 b、c</span>
<span class="hljs-keyword">int</span> d = <span class="hljs-number">3</span>, e = <span class="hljs-number">4</span>, f = <span
                class="hljs-number">5</span>; <span class="hljs-comment">// 声明三个整数并赋予初值</span>
<span class="hljs-keyword">byte</span> z = <span class="hljs-number">22</span>;         <span class="hljs-comment">// 声明并初始化 z</span>
String s = <span class="hljs-string">"runoob"</span>;  <span class="hljs-comment">// 声明并初始化字符串 s</span>
<span class="hljs-keyword">double</span> pi = <span class="hljs-number">3.14159</span>; <span class="hljs-comment">// 声明了双精度浮点型变量 pi</span>
<span class="hljs-keyword">char</span> x = <span class="hljs-string">'x'</span>;        <span class="hljs-comment">// 声明变量 x 的值是字符 'x'。</span></code></pre>
    <p>Java语言支持的变量类型有：</p>
    <ul>
        <li>类变量：独立于方法之外的变量，用 static 修饰。</li>
        <li>实例变量：独立于方法之外的变量，不过没有 static 修饰。</li>
        <li>局部变量：类的方法中的变量。</li>
    </ul>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Variable</span></span>{
    <span class="hljs-keyword">static</span> <span class="hljs-keyword">int</span> allClicks=<span
                class="hljs-number">0</span>;    <span class="hljs-comment">// 类变量</span>

    String str=<span class="hljs-string">"hello world"</span>;  <span class="hljs-comment">// 实例变量</span>

    <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
            class="hljs-title">method</span><span class="hljs-params">()</span></span>{

        <span class="hljs-keyword">int</span> i =<span class="hljs-number">0</span>;  <span
                class="hljs-comment">// 局部变量</span>

    }
}</code></pre>
    <h2>Java 局部变量</h2>
    <ul>
        <li>局部变量声明在方法、构造方法或者语句块中；</li>
        <li>局部变量在方法、构造方法、或者语句块被执行的时候创建，当它们执行完成后，变量将会被销毁；</li>
        <li>访问修饰符不能用于局部变量；</li>
        <li>局部变量只在声明它的方法、构造方法或者语句块中可见；</li>
        <li>局部变量是在栈上分配的。</li>
        <li>局部变量没有默认值，所以局部变量被声明后，必须经过初始化，才可以使用。</li>
    </ul>
    <p>在以下实例中age是一个局部变量。定义在pupAge()方法中，它的作用域就限制在这个方法中。</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">package</span> com.runoob.test;

<span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span
                class="hljs-title">Test</span></span>{
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">pupAge</span><span class="hljs-params">()</span></span>{
      <span class="hljs-keyword">int</span> age = <span class="hljs-number">0</span>;
      age = age + <span class="hljs-number">7</span>;
      System.out.println(<span class="hljs-string">"小狗的年龄是: "</span> + age);
   }

   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
           class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String args[])</span></span>{
      Test test = <span class="hljs-keyword">new</span> Test();
      test.pupAge();
   }
}</code></pre>
    <p>以上实例编译运行结果如下:</p>
    <pre>小狗的年龄是: 7</pre>
    <p>在下面的例子中 age 变量没有初始化，所以在编译时会出错：</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">package</span> com.runoob.test;

<span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span
                class="hljs-title">Test</span></span>{
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">pupAge</span><span class="hljs-params">()</span></span>{
      <span class="hljs-keyword">int</span> age;
      age = age + <span class="hljs-number">7</span>;
      System.out.println(<span class="hljs-string">"小狗的年龄是 : "</span> + age);
   }

   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
           class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String args[])</span></span>{
      Test test = <span class="hljs-keyword">new</span> Test();
      test.pupAge();
   }
}</code></pre>
    <p>以上实例编译运行结果如下:</p>
    <pre>Test.java:4:variable number might not have been initialized
age = age + 7;
         ^
1 error</pre>
    <h2>实例变量</h2>
    <ul>
        <li>实例变量声明在一个类中，但在方法、构造方法和语句块之外；</li>
        <li>当一个对象被实例化之后，每个实例变量的值就跟着确定；</li>
        <li>实例变量在对象创建的时候创建，在对象被销毁的时候销毁；</li>
        <li>实例变量的值应该至少被一个方法、构造方法或者语句块引用，使得外部能够通过这些方式获取实例变量信息；</li>
        <li>实例变量可以声明在使用前或者使用后；</li>
        <li>访问修饰符可以修饰实例变量；</li>
        <li>实例变量对于类中的方法、构造方法或者语句块是可见的。一般情况下应该把实例变量设为私有。通过使用访问修饰符可以使实例变量对子类可见；</li>
        <li>实例变量具有默认值。数值型变量的默认值是0，布尔型变量的默认值是false，引用类型变量的默认值是null。变量的值可以在声明时指定，也可以在构造方法中指定；</li>
        <li>实例变量可以直接通过变量名访问。但在静态方法以及其他类中，就应该使用完全限定名：ObejectReference.VariableName。</li>
    </ul>
    <h5>Employee.java 文件代码：</h5>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">import</span> java.io.*;
<span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span
                class="hljs-title">Employee</span></span>{
   <span class="hljs-comment">// 这个实例变量对子类可见</span>
   <span class="hljs-keyword">public</span> String name;
   <span class="hljs-comment">// 私有变量，仅在该类可见</span>
   <span class="hljs-keyword">private</span> <span class="hljs-keyword">double</span> salary;
   <span class="hljs-comment">//在构造器中对name赋值</span>
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-title">Employee</span> <span
           class="hljs-params">(String empName)</span></span>{
      name = empName;
   }
   <span class="hljs-comment">//设定salary的值</span>
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">setSalary</span><span class="hljs-params">(<span class="hljs-keyword">double</span> empSal)</span></span>{
      salary = empSal;
   }
   <span class="hljs-comment">// 打印信息</span>
   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span
           class="hljs-title">printEmp</span><span class="hljs-params">()</span></span>{
      System.out.println(<span class="hljs-string">"名字 : "</span> + name );
      System.out.println(<span class="hljs-string">"薪水 : "</span> + salary);
   }

   <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
           class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String args[])</span></span>{
      Employee empOne = <span class="hljs-keyword">new</span> Employee(<span class="hljs-string">"RUNOOB"</span>);
      empOne.setSalary(<span class="hljs-number">1000</span>);
      empOne.printEmp();
   }
}</code></pre>
    <p>以上实例编译运行结果如下:</p>
    <pre>$ javac Employee.java
$ java Employee
名字 : RUNOOB
薪水 : 1000.0</pre>
    <h2>类变量（静态变量）</h2>
    <ul>
        <li>类变量也称为静态变量，在类中以static关键字声明，但必须在方法构造方法和语句块之外。</li>
        <li>无论一个类创建了多少个对象，类只拥有类变量的一份拷贝。</li>
        <li>静态变量除了被声明为常量外很少使用。常量是指声明为public/private，final和static类型的变量。常量初始化后不可改变。</li>
        <li>静态变量储存在静态存储区。经常被声明为常量，很少单独使用static声明变量。</li>
        <li>静态变量在程序开始时创建，在程序结束时销毁。</li>
        <li>与实例变量具有相似的可见性。但为了对类的使用者可见，大多数静态变量声明为public类型。</li>
        <li>默认值和实例变量相似。数值型变量默认值是0，布尔型默认值是false，引用类型默认值是null。变量的值可以在声明的时候指定，也可以在构造方法中指定。此外，静态变量还可以在静态语句块中初始化。</li>
        <li>静态变量可以通过：ClassName.VariableName的方式访问。</li>
        <li>类变量被声明为public static final类型时，类变量名称一般建议使用大写字母。如果静态变量不是public和final类型，其命名方式与实例变量以及局部变量的命名方式一致。</li>
    </ul>
    <h5>Employee.java 文件代码：</h5>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">import</span> java.io.*;

<span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span
                class="hljs-title">Employee</span> </span>{
    <span class="hljs-comment">//salary是静态的私有变量</span>
    <span class="hljs-keyword">private</span> <span class="hljs-keyword">static</span> <span
                class="hljs-keyword">double</span> salary;
    <span class="hljs-comment">// DEPARTMENT是一个常量</span>
    <span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
                class="hljs-keyword">final</span> String DEPARTMENT = <span class="hljs-string">"开发人员"</span>;
    <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
            class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String args[])</span></span>{
    salary = <span class="hljs-number">10000</span>;
        System.out.println(DEPARTMENT+<span class="hljs-string">"平均工资:"</span>+salary);
    }
}</code></pre>
    <p>以上实例编译运行结果如下:</p>
    <pre>开发人员平均工资:10000.0</pre>
    <p>注意：如果其他类想要访问该变量，可以这样访问：Employee.DEPARTMENT</p>
    <p><br></p>
</div>
<script src="/croppic/jquery-2.1.3.min.js"></script>
<script src="../layui/layui.js"></script>
<script src="/js/my.js"></script>

</body>
</html>
