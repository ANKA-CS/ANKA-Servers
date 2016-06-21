#!/bin/sh

export AS_NAME="FastOCServer"
JAVA_OPTS=""

# Init ANKA Servers default paramters
. "$(dirname "$0")/_init.sh"


JAVA_OPTS="$JAVA_OPTS -Dlog4j.debug=true"

$AS_JAVA -classpath $AS_CLASSPATH $JAVA_OPTS si.ijs.anka.databush2.server.app.FastModeOCServer


