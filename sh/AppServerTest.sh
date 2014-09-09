#!/bin/sh

export AS_NAME="AppServerTest"

# Init ANKA Servers default paramters
. "$(dirname "$0")/_init.sh"


$AS_JAVA -classpath $AS_CLASSPATH $JAVA_OPTS -Dlog4j.debug=false  -DAppServer.init=AppServer-test.properties com.kriznar.csshell.epics.server.Server


