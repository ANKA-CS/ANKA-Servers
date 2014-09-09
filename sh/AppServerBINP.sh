#!/bin/sh

export AS_NAME="AppServerBINP"


# Init ANKA Servers defautl paramters
. "$(dirname "$0")/_init.sh"


$AS_JAVA -classpath $AS_CLASSPATH $JAVA_OPTS -Dlog4j.debug=false  -DAppServer.init=AppServer-binp.properties com.kriznar.csshell.epics.server.Server


