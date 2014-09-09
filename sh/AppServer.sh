#!/bin/sh

export AS_NAME="AppServer"

# Init ANKA Servers defautl paramters
. "$(dirname "$0")/_init.sh"


$AS_JAVA -classpath $AS_CLASSPATH $JAVA_OPTS -Dlog4j.debug=false  -DAppServer.init=AppServer.properties com.kriznar.csshell.epics.server.Server


