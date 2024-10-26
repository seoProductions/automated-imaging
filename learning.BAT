
::::::::::::::::::::::::::::::::::::::::::::
:: Comments apear like this!
:: Comments after a command need an & symbol.
::::::::::::::::::::::::::::::::::::::::::::
: Beginning


:: echo off swiches the echo mode, but it will still show itself if you dont clear the screen

echo off          &:: toggle the C:\Users\.... off
cls               &:: clear screen

:: An easy alternative would be to use the @ symbol. IT explicitly prevents the command from showing up.

@echo off

echo.             &:: new line
echo hi                 &:: simply printing to stdout

::::::::::::::::::::::::::::::::::::::::::::
::  % and Variables
::
:: So one % is used normaly to retrieve cmd args. Here is an example
:: batchtest.BAT arg1 arg2 arg3
::
::
:: To use arg1 in our program, we type %1
::::::::::::::::::::::::::::::::::::::::::::
::
:: We can set variables using SET


set num1=12345
set num2=67890

:: to print/use its value, we use 2 %'s. Like this %num%

echo.
echo number 1 is: %num1%
echo number 2 is: %num2%
echo.

:: TIP- we can type SET to view every enviromental variable within our OS
::
:: A shortcut to remove a variable is to set it = to nothing. Example: set num=

:: Mixing them both

echo.
echo Example: Correct % usage
echo Cmd1 is: %1 Number1 is: %num1% Cmd2 is: %2 Number2 is: %num2%
echo.

::::::::::::::::::::::::::::::::::::::::::::
::
:: Bath can only do arethmatic thru the SET command, using the /a flag. It stand for arethmatic

set /a sum= %num1% + %num2%
echo.
echo the sum of num1 and num2 is %sum%
echo.

::
::::::::::::::::::::::::::::::::::::::::::::
::
:: User input

:: similar to arethmatic, but we will use /p flag. It stands for Prompt

set /p favnum= what is your favorite number?
echo.
echo got it! your favorite number is %favnum%
echo.
::::::::::::::::::::::::::::::::::::::::::::
::
:: NOTE: everything after the = is prompted to the user.
::
::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::
::
::    CONTROLL FLOW
::
::::::::::::::::::::::::::::::::::::::::::::

:: you can use if-statements like this

if %favnum% GTR 100 echo your favorite number is BIGGER than 100!
if %favnum% == 100 echo your favorite number is 100!                    &:: also use EQU
if %favnum% LSS 100 echo your favorite number is SMALLER than 100!


:: Reference: IF statement logical operators
:: EQU : Equal
:: NEQ : Not equal

:: LSS : Less than <
:: LEQ : Less than or Equal <=

:: GTR : Greater than >
:: GEQ : Greater than or equal >=

::::::::::::::::::::::::::::::::::::::::::::
::
::    Find and Execute
::
::::::::::::::::::::::::::::::::::::::::::::

:: To find where your executable is, Use CD to change directory
:: NOTE that: a $ symbol, for example - $RecycleBin  - means the folder is hidden.


echo.
cd \Users\                    &:: change directory to Users

echo active users on this computer:
dir /b                              &:: list directories

cd \Users\eliseo.duque\Desktop
echo .


:: Run an executable! Its quite simple
:: just use the START comand.

echo.
echo running webex.lnk....
start Webex.lnk

::::::::::::::::::::::::::::::::::::::::::::
::
::    Anchors
::
::::::::::::::::::::::::::::::::::::::::::::
::
:: An anchor is just a label with a : infront of it. We can run the GOTO comand to move the execution flow. :: Similar to the Instruction Pointer in assembly.
::
::::::::::::::::::::::::::::::::::::::::::::
::
:: Ask user if they want to repeat this demo. If not, then we can exit!
::

echo.
set /p answer= Would you like to repeat this demo? ( type y/n )

if $answer$ == y GOTO Beginning
if $answer$ == n GOTO Exit

::::::::::::::::::::::::::::::::::::::::::::

:Exit             &:: Exit is an example of an anchor
echo on                 &:: toggle the C:\Users\.... on
