# A Brief Tutorial of My Language

_Disclaimer:_ If you have similar homework, do not copy paste directly. Try to solve yourself.

## Compile & Run
You can simply type "make" in the terminal. The default test file name is
"test.txt". You can change it by changing it from Makefile
```bash
$ make
```

## Clean
```bash
$ make clean
```

## Language Constructs and Their Syntax

### Data Types

There are some data types in my language.

##### These data types are listed below: <br />
INTEGER -> Is to represent numeric values<br />
CHAR -> Is to represent characters (‘A’, ‘S’, ‘T’ etc.)<br />
STRING -> Is to represent strings (set of characters) (“car”, “hall”, “studentid” etc.)<br />
BOOLEAN -> Is to represent boolean values (TRUE or FALSE)<br />
FLOAT -> Is to represent floating points (3.45, 0.4, etc.)<br />

### Variable Declarations

While declaring variables, user have to specify the type of variable first. The
variable name should be written after that. Assignment operation can be done together with variable definition.

- For example: <br />
INTEGER x -> is a declaration for x variable<br />
INTEGER x=4 -> is also a declaration for x variable with value 4<br />


### Assignment Operations

When a user wants to assign a value to a variable, then this user could do it in this way:

- For example: <br />
MyFloat2=3.4 -> MyFloat2 is equal to 3.4<br />
MyFloat2=3+4+5 -> MyFlaot2 is equal to 12<br />
CHAR ADS='X' -> New declared ADS character is equal to X<br />

### Conditional Statements

A conditional statement is a set of rules performed if a certain condition is met. There are two types of conditional statements in my language. These are IF and ELSE statements. ELSE statement must be used after IF statement.

- Example usage of IF: <br />
INTEGER temp=3<br />
IF(temp==3)<br />
BEGIN<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRINT(“temp was equal to 3 at the beginning. Now it is equal 4.”)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEWLINE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp=temp+1<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEWLINE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRINT(“temp=”)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRINT(temp)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEWLINE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRINT(“see?”)<br />
END

- Example usage of ELSE: <br />
IF(i!=5)<br />
BEGIN<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BOOLEAN A1=TRUE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FLOAT MyFloat2=3+4+5+5+5<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STRING YSd4="CEMAL"<br />
END<br />
ELSE<br />
BEGIN<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STRING YSd4="CEMAL"<br />
END<br />

### Loops

A loop is used To perform an operation several times according to a condition. There are two types of loops in my language. These are FOR and WHILE loops.

- Example usage of WHILE: <br />
WHILE(TRUE)<br />
BEGIN<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BOOLEAN A1=TRUE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FLOAT MyFloat2=3+4+5+5+5<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STRING YSdsds34D3="factory"<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STRING YS4="abcdef"<br />
END<br />

- Example usage of FOR: <br />
INTEGER a=4<br />
FOR(INTEGER i=0;i<5;i=i+1)<br />
BEGIN<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRINT (a)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEWLINE<br />
END<br />

### Arrays

An array is a series of elements of the same type placed in contiguous memory
locations that can be individually referenced by adding an index to a unique identifier.

- Example usage for an array declaration: <br /><br />
INTEGER MyArray(5) // Create an array to hold integer values named MyArray with size 5. <br />
STRING myStringArray(2)=["car","house"] // Create a static array to hold given string values with size 2. <br />

### Functions

Functions allow to structure programs in segments of code to perform individual
tasks. There are tow types of functions in my language. These types are user
defined and built-in functions.

##### Example usage for functions: <br />
- Declarations:<br />
FUNCTION A1(asd3,x)<br />
BEGIN<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y="cemal"<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x=x+1<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRINT(y)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRINT(X)<br />
END<br />



- Call:<br />
A1(3,"deneme")



