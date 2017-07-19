#!/bin/sh
cd /opt/imgcompress
export PATH=/opt/jdk1.7.0_71/bin
export CLASSPATH=.:/opt/jdk1.7.0_71/lib/dt.jar:/opt/jdk1.7.0_71/lib/tools.jar
java -jar imgcompress.jar 
