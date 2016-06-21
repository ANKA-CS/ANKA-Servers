#!/bin/sh

export AS_NAME="AppServerOrbit"
JAVA_OPTS=""

# Init ANKA Servers default paramters
. "$(dirname "$0")/_init.sh"


JAVA_OPTS="$JAVA_OPTS -Dlog4j.debug=true"
JAVA_OPTS="$JAVA_OPTS -DAppServer.init=AppServer-orbit.properties"

$AS_JAVA -classpath $AS_CLASSPATH $JAVA_OPTS com.kriznar.csshell.epics.server.Server


