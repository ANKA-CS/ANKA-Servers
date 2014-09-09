@echo off

set JAVA_OPTS=%JAVA_OPTS% -Dlog4j.debug=false
set JAVA_OPTS=%JAVA_OPTS% -DAppServer.init=AppServer-distributed.properties
set JAVA_OPTS=%JAVA_OPTS% -DAppServer.configName=acc-pc-lw19

_run_java.bat com.kriznar.csshell.epics.server.Server