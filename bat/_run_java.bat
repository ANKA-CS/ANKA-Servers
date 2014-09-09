@echo off

SETLOCAL

title %AS_NAME%


call _init.bat

set JAVA_CLASSPATH=%JAVA_CLASSPATH%;"%ACS_LIB%"
set JAVA_CLASSPATH=%JAVA_CLASSPATH%;"%AS_RES%"
set JAVA_CLASSPATH=%JAVA_CLASSPATH%;"%AS_CONF%"
set JAVA_CLASSPATH=%JAVA_CLASSPATH%;"%AS_JLIB%\*"

set JAVA_OPTS=%JAVA_OPTS% -Duser.timezone=CET

echo Executing: %AS_JAVA% -classpath %JAVA_CLASSPATH% %JAVA_OPTS% %1 %2 %3 %4 %5 %6 %7 %8 %9
%AS_JAVA% -classpath %JAVA_CLASSPATH% %JAVA_OPTS% %1 %2 %3 %4 %5 %6 %7 %8 %9

