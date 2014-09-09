@echo off

rem Find my location

rem echo
rem echo [ANKA Servers] Initialization...


set AS_SH=%~dp0

rem Set ANKA Clients home folder
set AS_HOME=%AS_SH%..

rem echo [ANKA Servers] Home: %AS_HOME%

set AS_CONF=%AS_HOME%\config
set AS_LIB=%AS_HOME%\lib
set AS_RES=%AS_LIB%\resources
set AS_WIN=%AS_LIB%\win
set AS_JHOME=%AS_WIN%\jdk1.6.0_33
set AS_JBIN=%AS_JHOME%\bin
set AS_JAVA=%AS_JBIN%\java.exe
set AS_JAVAW=%AS_JBIN%\javaw.exe
set AS_JLIB=%AS_LIB%\java
