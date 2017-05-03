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
    <title>Java 基本数据类型</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<body>
<jsp:include page="/official/navigationBar.jsp" flush="true"/>

<div class="my-content" style="position: absolute;">
    <h1>Java 基本数据类型</h1>
    <p>变量就是申请内存来存储值。也就是说，当创建变量的时候，需要在内存中申请空间。</p>
    <p>内存管理系统根据变量的类型为变量分配存储空间，分配的空间只能用来储存该类型数据。</p>
    <p><img src="http://www.runoob.com/wp-content/uploads/2013/12/memorypic1.jpg"></p>
    <p>因此，通过定义不同类型的变量，可以在内存中储存整数、小数或者字符。</p>
    <p>Java 的两大数据类型:</p>
    <ul>
        <li>内置数据类型</li>
        <li>引用数据类型</li>
    </ul>
    <p><br></p>
    <h2>内置数据类型</h2>
    <p>Java语言提供了八种基本类型。六种数字类型（四个整数型，两个浮点型），一种字符类型，还有一种布尔型。</p>
    <p>byte：</p>
    <ul>
        <li>byte 数据类型是8位、有符号的，以二进制补码表示的整数；</li>
        <li>最小值是&nbsp;-128（-2^7）；</li>
        <li>最大值是&nbsp;127（2^7-1）；</li>
        <li>默认值是&nbsp;0；</li>
        <li>byte 类型用在大型数组中节约空间，主要代替整数，因为 byte 变量占用的空间只有 int 类型的四分之一；</li>
        <li>例子：byte a = 100，byte b = -50。</li>
    </ul>
    <p>short：</p>
    <ul>
        <li>short 数据类型是 16 位、有符号的以二进制补码表示的整数</li>
        <li>最小值是&nbsp;-32768（-2^15）；</li>
        <li>最大值是&nbsp;32767（2^15 - 1）；</li>
        <li>Short 数据类型也可以像 byte 那样节省空间。一个short变量是int型变量所占空间的二分之一；</li>
        <li>默认值是&nbsp;0；</li>
        <li>例子：short s = 1000，short r = -20000。</li>
    </ul>
    <p>int：</p>
    <ul>
        <li>int 数据类型是32位、有符号的以二进制补码表示的整数；</li>
        <li>最小值是&nbsp;-2,147,483,648（-2^31）；</li>
        <li>最大值是&nbsp;2,147,483,647（2^31 - 1）；</li>
        <li>一般地整型变量默认为 int 类型；</li>
        <li>默认值是&nbsp;0&nbsp;；</li>
        <li>例子：int a = 100000, int b = -200000。</li>
    </ul>
    <p>long：</p>
    <ul>
        <li>long 数据类型是 64 位、有符号的以二进制补码表示的整数；</li>
        <li>最小值是&nbsp;-9,223,372,036,854,775,808（-2^63）；</li>
        <li>最大值是&nbsp;9,223,372,036,854,775,807（2^63 -1）；</li>
        <li>这种类型主要使用在需要比较大整数的系统上；</li>
        <li>默认值是&nbsp;0L；</li>
        <li>例子： long a = 100000L，Long b = -200000L。</li>
    </ul>
    <p>float：</p>
    <ul>
        <li>float 数据类型是单精度、32位、符合IEEE 754标准的浮点数；</li>
        <li>float 在储存大型浮点数组的时候可节省内存空间；</li>
        <li>默认值是&nbsp;0.0f；</li>
        <li>浮点数不能用来表示精确的值，如货币；</li>
        <li>例子：float f1 = 234.5f。</li>
    </ul>
    <p>double：</p>
    <ul>
        <li>double 数据类型是双精度、64 位、符合IEEE 754标准的浮点数；</li>
        <li>浮点数的默认类型为double类型；</li>
        <li>double类型同样不能表示精确的值，如货币；</li>
        <li>默认值是&nbsp;0.0d；</li>
        <li>例子：double d1 = 123.4。</li>
    </ul>
    <p>boolean：</p>
    <ul>
        <li>boolean数据类型表示一位的信息；</li>
        <li>只有两个取值：true 和 false；</li>
        <li>这种类型只作为一种标志来记录 true/false 情况；</li>
        <li>默认值是&nbsp;false；</li>
        <li>例子：boolean one = true。</li>
    </ul>
    <p>char：</p>
    <ul>
        <li>char类型是一个单一的 16 位 Unicode 字符；</li>
        <li>最小值是&nbsp;\u0000（即为0）；</li>
        <li>最大值是&nbsp;\uffff（即为65,535）；</li>
        <li>char 数据类型可以储存任何字符；</li>
        <li>例子：char letter = 'A';。</li>
    </ul>
    <h3>实例</h3>
    <p>对于数值类型的基本类型的取值范围，我们无需强制去记忆，因为它们的值都已经以常量的形式定义在对应的包装类中了。请看下面的例子：</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">PrimitiveTypeTest</span> </span>{
    <span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span
            class="hljs-keyword">void</span> <span class="hljs-title">main</span><span class="hljs-params">(String[] args)</span> </span>{
        <span class="hljs-comment">// byte  </span>
        System.out.println(<span class="hljs-string">"基本类型：byte 二进制位数："</span> + Byte.SIZE);
        System.out.println(<span class="hljs-string">"包装类：java.lang.Byte"</span>);
        System.out.println(<span class="hljs-string">"最小值：Byte.MIN_VALUE="</span> + Byte.MIN_VALUE);
        System.out.println(<span class="hljs-string">"最大值：Byte.MAX_VALUE="</span> + Byte.MAX_VALUE);
        System.out.println();

        <span class="hljs-comment">// short  </span>
        System.out.println(<span class="hljs-string">"基本类型：short 二进制位数："</span> + Short.SIZE);
        System.out.println(<span class="hljs-string">"包装类：java.lang.Short"</span>);
        System.out.println(<span class="hljs-string">"最小值：Short.MIN_VALUE="</span> + Short.MIN_VALUE);
        System.out.println(<span class="hljs-string">"最大值：Short.MAX_VALUE="</span> + Short.MAX_VALUE);
        System.out.println();

        <span class="hljs-comment">// int  </span>
        System.out.println(<span class="hljs-string">"基本类型：int 二进制位数："</span> + Integer.SIZE);
        System.out.println(<span class="hljs-string">"包装类：java.lang.Integer"</span>);
        System.out.println(<span class="hljs-string">"最小值：Integer.MIN_VALUE="</span> + Integer.MIN_VALUE);
        System.out.println(<span class="hljs-string">"最大值：Integer.MAX_VALUE="</span> + Integer.MAX_VALUE);
        System.out.println();

        <span class="hljs-comment">// long  </span>
        System.out.println(<span class="hljs-string">"基本类型：long 二进制位数："</span> + Long.SIZE);
        System.out.println(<span class="hljs-string">"包装类：java.lang.Long"</span>);
        System.out.println(<span class="hljs-string">"最小值：Long.MIN_VALUE="</span> + Long.MIN_VALUE);
        System.out.println(<span class="hljs-string">"最大值：Long.MAX_VALUE="</span> + Long.MAX_VALUE);
        System.out.println();

        <span class="hljs-comment">// float  </span>
        System.out.println(<span class="hljs-string">"基本类型：float 二进制位数："</span> + Float.SIZE);
        System.out.println(<span class="hljs-string">"包装类：java.lang.Float"</span>);
        System.out.println(<span class="hljs-string">"最小值：Float.MIN_VALUE="</span> + Float.MIN_VALUE);
        System.out.println(<span class="hljs-string">"最大值：Float.MAX_VALUE="</span> + Float.MAX_VALUE);
        System.out.println();

        <span class="hljs-comment">// double  </span>
        System.out.println(<span class="hljs-string">"基本类型：double 二进制位数："</span> + Double.SIZE);
        System.out.println(<span class="hljs-string">"包装类：java.lang.Double"</span>);
        System.out.println(<span class="hljs-string">"最小值：Double.MIN_VALUE="</span> + Double.MIN_VALUE);
        System.out.println(<span class="hljs-string">"最大值：Double.MAX_VALUE="</span> + Double.MAX_VALUE);
        System.out.println();

        <span class="hljs-comment">// char  </span>
        System.out.println(<span class="hljs-string">"基本类型：char 二进制位数："</span> + Character.SIZE);
        System.out.println(<span class="hljs-string">"包装类：java.lang.Character"</span>);
        <span class="hljs-comment">// 以数值形式而不是字符形式将Character.MIN_VALUE输出到控制台  </span>
        System.out.println(<span class="hljs-string">"最小值：Character.MIN_VALUE="</span>
                + (<span class="hljs-keyword">int</span>) Character.MIN_VALUE);
        <span class="hljs-comment">// 以数值形式而不是字符形式将Character.MAX_VALUE输出到控制台  </span>
        System.out.println(<span class="hljs-string">"最大值：Character.MAX_VALUE="</span>
                + (<span class="hljs-keyword">int</span>) Character.MAX_VALUE);
    }
}</code></pre>
    <p>编译以上代码输出结果如下所示：</p>
    <pre>基本类型：byte 二进制位数：8
包装类：java.lang.Byte
最小值：Byte.MIN_VALUE=-128
最大值：Byte.MAX_VALUE=127

基本类型：short 二进制位数：16
包装类：java.lang.Short
最小值：Short.MIN_VALUE=-32768
最大值：Short.MAX_VALUE=32767

基本类型：int 二进制位数：32
包装类：java.lang.Integer
最小值：Integer.MIN_VALUE=-2147483648
最大值：Integer.MAX_VALUE=2147483647

基本类型：long 二进制位数：64
包装类：java.lang.Long
最小值：Long.MIN_VALUE=-9223372036854775808
最大值：Long.MAX_VALUE=9223372036854775807

基本类型：float 二进制位数：32
包装类：java.lang.Float
最小值：Float.MIN_VALUE=1.4E-45
最大值：Float.MAX_VALUE=3.4028235E38

基本类型：double 二进制位数：64
包装类：java.lang.Double
最小值：Double.MIN_VALUE=4.9E-324
最大值：Double.MAX_VALUE=1.7976931348623157E308

基本类型：char 二进制位数：16
包装类：java.lang.Character
最小值：Character.MIN_VALUE=0
最大值：Character.MAX_VALUE=65535</pre>
    <p>Float和Double的最小值和最大值都是以科学记数法的形式输出的，结尾的"E+数字"表示E之前的数字要乘以10的多少次方。比如3.14E3就是3.14 × 103&nbsp;=3140，3.14E-3 就是 3.14 x
        10-3&nbsp;=0.00314。</p>
    <p>实际上，JAVA中还存在另外一种基本类型void，它也有对应的包装类 java.lang.Void，不过我们无法直接对它们进行操作。</p>
    <h2>引用类型</h2>
    <ul>
        <li>在Java中，引用类型的变量非常类似于C/C++的指针。引用类型指向一个对象，指向对象的变量是引用变量。这些变量在声明时被指定为一个特定的类型，比如 Employee、Puppy
            等。变量一旦声明后，类型就不能被改变了。
        </li>
        <li>对象、数组都是引用数据类型。</li>
        <li>所有引用类型的默认值都是null。</li>
        <li>一个引用变量可以用来引用与任何与之兼容的类型。</li>
        <li>例子：Site site = new Site("Runoob")。</li>
    </ul>
    <h2>Java常量</h2>
    <p>常量在程序运行时，不会被修改的量。</p>
    <p>在 Java 中使用 final 关键字来修饰常量，声明方式和变量类似：</p>
    <pre>final double PI = 3.1415927;</pre>
    <p>虽然常量名也可以用小写，但为了便于识别，通常使用大写字母表示常量。</p>
    <p>字面量可以赋给任何内置类型的变量。例如：</p>
    <pre>byte a = 68;
char a = 'A'</pre>
    <p>byte、int、long、和short都可以用十进制、16进制以及8进制的方式来表示。</p>
    <p>当使用常量的时候，前缀0表示8进制，而前缀0x代表16进制。例如：</p>
    <pre>int decimal = 100;
int octal = 0144;
int hexa =  0x64;</pre>
    <p>和其他语言一样，Java的字符串常量也是包含在两个引号之间的字符序列。下面是字符串型字面量的例子：</p>
    <pre>"Hello World"
"two\nlines"
"\"This is in quotes\""</pre>
    <p>字符串常量和字符常量都可以包含任何Unicode字符。例如：</p>
    <pre>char a = '\u0001';
String a = "\u0001";</pre>
    <p>Java语言支持一些特殊的转义字符序列。</p>
    <table>
        <tbody>
        <tr>
            <th>符号</th>
            <th>字符含义</th>
        </tr>
        <tr>
            <td>\n</td>
            <td>换行 (0x0a)</td>
        </tr>
        <tr>
            <td>\r</td>
            <td>回车 (0x0d)</td>
        </tr>
        <tr>
            <td>\f</td>
            <td>换页符(0x0c)</td>
        </tr>
        <tr>
            <td>\b</td>
            <td>退格 (0x08)</td>
        </tr>
        <tr>
            <td>\s</td>
            <td>空格 (0x20)</td>
        </tr>
        <tr>
            <td>\t</td>
            <td>制表符</td>
        </tr>
        <tr>
            <td>\"</td>
            <td>双引号</td>
        </tr>
        <tr>
            <td>\'</td>
            <td>单引号</td>
        </tr>
        <tr>
            <td>\\</td>
            <td>反斜杠</td>
        </tr>
        <tr>
            <td>\ddd</td>
            <td>八进制字符 (ddd)</td>
        </tr>
        <tr>
            <td>\uxxxx</td>
            <td>16进制Unicode字符 (xxxx)</td>
        </tr>
        </tbody>
    </table>
    <h2>自动类型转换</h2>
    <p>整型、实型（常量）、字符型数据可以混合运算。运算中，不同类型的数据先转化为同一类型，然后进行运算。</p>
    <p>转换从低级到高级。</p>
    <pre>低  ------------------------------------&gt;  高

byte,short,char—&gt; int —&gt; long—&gt; float —&gt; double </pre>
    <p>数据类型转换必须满足如下规则：</p>
    <ul>
        <li>1. 不能对boolean类型进行类型转换。</li>
        <li>2. 不能把对象类型转换成不相关类的对象。</li>
        <li>3. 在把容量大的类型转换为容量小的类型时必须使用强制类型转换。</li>
        <li>4. 转换过程中可能导致溢出或损失精度，例如：int i =128;
            byte b = (byte)i;因为byte类型时8位，最大值为127，所以当强制转换为int类型值128时候就会导致溢出。
        </li>
        <li>5. 浮点数到整数的转换是通过舍弃小数得到，而不是四舍五入，例如：(int)23.7 == 23;
            (int)-45.89f == -45
        </li>
    </ul>
    <h3>自动类型转换</h3>
    <p>必须满足转换前的数据类型的位数要低于转换后的数据类型，例如: short数据类型的位数为16位，就可以自动转换位数为32的int类型，同样float数据类型的位数为32，可以自动转换为64位的double类型。</p>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span
            class="hljs-title">ZiDongLeiZhuan</span></span>{
        <span class="hljs-function"><span class="hljs-keyword">public</span> <span
                class="hljs-keyword">static</span> <span class="hljs-keyword">void</span> <span
                class="hljs-title">main</span><span class="hljs-params">(String[] args)</span></span>{
            <span class="hljs-keyword">char</span> c1=<span class="hljs-string">'a'</span>;<span class="hljs-comment">//定义一个char类型</span>
            <span class="hljs-keyword">int</span> i1 = c1;<span class="hljs-comment">//char自动类型转换为int</span>
            System.out.println(<span class="hljs-string">"char自动类型转换为int后的值等于"</span>+i1);
            <span class="hljs-keyword">char</span> c2 = <span class="hljs-string">'A'</span>;<span class="hljs-comment">//定义一个char类型</span>
            <span class="hljs-keyword">int</span> i2 = c2+<span class="hljs-number">1</span>;<span class="hljs-comment">//char 类型和 int 类型计算</span>
            System.out.println(<span class="hljs-string">"char类型和int计算后的值等于"</span>+i2);
        }
}</code></pre>
    <p>运行结果为:</p>
    <pre>char自动类型转换为int后的值等于97
char类型和int计算后的值等于66</pre>
    <p>解析：c1的值为字符'a',查ascii码表可知对应的int类型值为97，'A'对应值为65，所以i2=65+1=66。</p>
    <h3>强制类型转换</h3>
    <ul>
        <li>1. 条件是转换的数据类型必须是兼容的。</li>
        <li>2. 格式：(type)value type是要强制类型转换后的数据类型 实例：</li>
    </ul>
    <pre style="max-width: 100%;"><code class="java hljs" codemark="1"><span class="hljs-keyword">public</span> <span
            class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">QiangZhiZhuanHuan</span></span>{
        <span class="hljs-function"><span class="hljs-keyword">public</span> <span
                class="hljs-keyword">static</span> <span class="hljs-keyword">void</span> <span
                class="hljs-title">main</span><span class="hljs-params">(String[] args)</span></span>{
            <span class="hljs-keyword">int</span> i1 = <span class="hljs-number">123</span>;
            <span class="hljs-keyword">byte</span> b = (<span class="hljs-keyword">byte</span>)i1;<span
                class="hljs-comment">//强制类型转换为byte</span>
            System.out.println(<span class="hljs-string">"int强制类型转换为byte后的值等于"</span>+b);

        }
    }</code></pre>
    <ul>
        <li>运行结果：int强制类型转换为byte后的值等于123</li>
    </ul>
    <h3>隐含强制类型转换</h3>
    <p></p>
    <ul>
        <li>1. 整数的默认类型是 int。</li>
        <li>2. 浮点型不存在这种情况，因为在定义 float 类型时必须在数字后面跟上 F 或者 f。</li>
    </ul>
    <p><br></p>
</div>
<script src="/croppic/jquery-2.1.3.min.js"></script>
<script src="../layui/layui.js"></script>
<script src="/js/my.js"></script>

</body>
</html>
