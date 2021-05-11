<img src="https://user-images.githubusercontent.com/52249052/117655651-2d2e3080-b1b9-11eb-803f-f1210c0131e6.png" width=70 />

## *Chicken Programming Language*
A simple, light programming language for basic calculation and problem solving.

<br/>

#### *Commands to create compiler `chick.exe`*
```
bison -d chicken.y
flex chicken.l
gcc -o chick lex.yy.c chicken.tab.c
```
<br/>

#### *Run program*
1. ***Interactive mode*** command is `chick`.
2. ***To run a script***, command is `chick <file-name>.txt`.<br/>For example, `chick sample-programs/7_prime_numbers.txt`.

<br/>

#### *Table of content*
| Topic | Description |
| :---: | --- |
| Data types | `Numbers`: Default data type. Similar to C double data type.<br/>`String`: Similar to C character array. |
| Variables initialization | All variables are initialized globally.<br/>***variablename := expression;***<br/><br/>`i := 0;`<br/>`firstVariable =: -21.5;` |
| Comment | Single line comment starts with `#` character.<br/><br/>`# This is a comment` |
| Print statement | Prints expression or string without newline.<br/><br/>***print expression;***<br/>`print 10+20;`<br/>`print firstVariable;`<br/><br/>***print string;***<br/>`print "Hello world\n";` |
| Scan statement | Only works in interactive mode.<br/>***scan variable;***<br/><br/>`scan firstVariable;` |
| Operators | Precedence:<br/><ol><li>***( expression )***<br>`print (10+20)/3;` `Output: 10`</li><br/><li>***^***: Exponent<br>`print 8.3^2;` `Output: 68.89`</li><br/><li>***not***: Logical NOT<br>`print not 0;` `Output: 1`</li><br/><li>***\**** : Multiplication<br/>`print 2*4;` `Output: 8`<br/><br/>***/*** : Division<br/>`print 4/2;` `Output: 2`<br/><br/>***%*** : Modulus<br/>`print 11%3;` `Output: 2`</li><br/><li>***+*** : Plus<br/>`print 4+2;` `Output: 6`<br/><br/>***-*** : Minus<br/>`print 4-2;` `Output: 2`</li><br/><li>***>=*** : Grater than or equal<br/>`print 11 >= 4.2;` `Output: 1`<br/><br/>***<=*** : Less than or equal<br/>`print 11 <= 11;` `Output: 1`<br/><br/>***=*** : Equal to<br/>`print 4=4;` `Output: 1`<br/><br/>***!=*** : Not equal to<br/>`print 4!=4;` `Output: 0`<br/><br/>***>*** : Grater than<br/>`print 4>2;` `Output: 1`<br/><br/>***<*** : Less than<br/>`print 4<2;` `Output: 0`</li><br/><li>***and*** : Logical AND<br/>`print 1 and 0;` `Output: 0`<br/><br/>***or*** : Logical OR<br/>`print 1 or 0;` `Output: 1`</li></ol> |
| If Else | <ul><li>***if expression then statement***<br/>`if not 0 then print "Hello\n";`</li><br/><li>***if expression then statement***<br/>***else statement***<br/><br/>`if 0 then print "Zero\n";`<br/>`else print "Not zero";`</li><br/><li>***if expression then statement***<br/>***else if expression then statement***<br/>***else statement***<br/><br/>`number1 := -10;`<br/>`number2 := -7;`<br/>`if number1 = number2 then print "number1 = number2";`<br/>`else if number1 > number2 then print "number1 > number2";`<br/>`else print "number1 < number2";`<br/></li></ul> |
| While loop | ***while expression then statement***<br/><br/>`i := 0;`<br/>`while i < 10 then {`<br/>&nbsp;&nbsp;&nbsp;&nbsp;`print i;`<br/>&nbsp;&nbsp;&nbsp;&nbsp;`print "\n";`<br/>&nbsp;&nbsp;&nbsp;&nbsp;`i := i + 1;`<br/>`}` |
| Exit program | Keyword `exit` terminates the program.<br/>`exit;` |
| Random number | Returns a randomly generated number within lower to upper.<br/>***random(lower, upper)***<br/><br/>`print random(1.21, 3.15);` |
| Necessary maths | <ul><li>***abs(x)***<br/>Returns absolute value of given number.<br/>`print abs(-21.65);` `Output: 21.65`</li><br/><li>***sqrt(x)***<br/>Returns square root `√x` of given number.<br/>`print sqrt(81);` `Output: 9`</li><br/><li>***floor(x)***<br/>Returns the nearest integer less than given argument.<br/>`print floor(31.91);` `Output: 31`</li><br/><li>***ceil(x)***<br/>Returns the nearest integer grater than given argument.<br/>`print ceil(31.91);` `Output: 32`</li></ul> |
| Logarithm | ***<ul><li>log(x)***<br/>Returns natural logarithm of a number x with base e.<br/>`print log(10);` `Output: 2.302585`<br/><br/>***log(x, base)***<br/>Returns natural logarithm of a number x with base given as parameter.<br/>`print log(100, 2);` `Output: 6.643856`</li><br/><li>***exp(x)***<br/>Returns e (2.71828) raised to the power of the given argument.<br/>`print exp(10);` `Output: 22026.465795`</li></ul> |
| Trigonometry | <ul><li>***PI***<br/>The keyword PI `π` returns the ratio of a circle’s circumference to its diameter.<br/>`print PI;` `Output: 3.141593`</li><br/><li>***sin(x)***<br/>Returns the sine of an argument (angle in radian).<br/>`print sin(PI/2);` `Output: 1`<br/><br/>***asin(x)***<br/>It takes a single argument (-1 ≤ x ≤ -1), and returns the arc sine (inverse of sin) in radian.<br/>`print asin(0.5);` `Output: 0.523599`</li><br/><li>***cos(x)***<br/>Returns the cosine of an argument (angle in radian).<br/>`print cos(PI/2);` `Output: 0`<br/><br/>***acos(x)***<br/>It takes a single argument (-1 ≤ x ≤ -1), and returns the arc cosine (inverse of cosine) in radian.<br/>`print acos(0.5);` `Output: 1.047198`</li><br/><li>***tan(x)***<br/>Returns the tangent of an argument (angle in radian).<br/>`print tan(PI/4);` `Output: 1`<br/><br/>***atan(x)***<br/>It takes a single argument, and returns the arc tangent (inverse of tangent) in radian.<br/>`print atan(0.5);` `Output: 0.463648`</li></ul> |
