#!/bin/sh

export AS_NAME="AppServerBINP"
JAVA_OPTS=""

# Init ANKA Servers default paramters
. "$(dirname "$0")/_init.sh"


JAVA_OPTS="$JAVA_OPTS -Dlog4j.debug=false"
JAVA_OPTS="$JAVA_OPTS -DAppServer.init=AppServer-binp.properties"

$AS_JAVA -classpath $AS_CLASSPATH $JAVA_OPTS com.kriznar.csshell.epics.server.Server


