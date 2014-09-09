#!/bin/sh

# Find my location

echo "[ANKA Servers] Initialization..."

export AS_SH="$(dirname $(readlink -f "$0"))"

# Set ANKA Servers home folder

export AS_HOME="$(readlink -f "$AS_SH/.." )"

echo "[ANKA Servers] Home: $AS_HOME"

export AS_CONF=$AS_HOME/config
export AS_LIB=$AS_HOME/lib
export AS_RES=$AS_LIB/resources
export AS_LIN=$AS_LIB/lin
export AS_LOG=$AS_HOME/log
export AS_JHOME=$AS_LIN/jdk1.6.0_33_x64
export AS_JBIN=$AS_JHOME/bin
export AS_JAVA=$AS_JBIN/java
export AS_JLIB=$AS_LIB/java

# JAVA initializations

AS_CLASSPATH=$AS_CONF
AS_CLASSPATH=$AS_CLASSPATH:$AS_RES
AS_CLASSPATH=$AS_CLASSPATH:$AS_JLIB/*

export AS_CLASSPATH

JAVA_OPTS="$JAVA_OPTS -Duser.timezone=CET"
JAVA_OPTS="$JAVA_OPTS -Dbundle.log=$AS_LOG"
JAVA_OPTS="$JAVA_OPTS -Dbundle.log.file=$AS_LOG/$AS_NAME.log"

export JAVA_OPTS

echo "[ANKA Servers] Initialization done"
