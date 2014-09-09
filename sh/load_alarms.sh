#!/bin/sh


# Init ANKA Servers defautl paramters
. "$(dirname "$0")/_init.sh"

APP_OPTS="-pluginCustomization plugin_customization.ini"


/home/operator/applications/epics/extras/alarm-system/alarm-config-tool/AlarmConfigTool -pluginCustomization /home/operator/applications/epics/extras/alarm-system/alarm-config-tool/plugin_customization.ini -root "ANKA Machine" -import -file /home/operator/applications/ANKA-Servers/config/AppServer/var/alarms_export.xml


css-alarm-server stop 
css-jms2rdb stop
sleep 3
css-alarm-server start
css-jms2rdb start

