#!/bin/sh

#``DNS Relay for CCNx''
#
#Copyright (C) 2012, Delft University of Technology, Faculty of Electrical Engineering, Mathematics and Computer Science, Network Architectures and Services, Niels van Adrichem
#
#    This file is part of ``DNS Relay for CCNx''.
#
#    ``DNS Relay for CCNx'' is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License version 3 as published by
#    the Free Software Foundation.
#
#    ``DNS Relay for CCNx'' is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with ``DNS Relay for CCNx''.  If not, see <http:#www.gnu.org/licenses/>.

JAR_FILE=ccn.jar
JAVA_HOME=${JAVA_HOME:=/usr}
JAVAC=$JAVA_HOME/bin/javac
SCRIPT_DIR=`dirname $0`

CP1=$SCRIPT_DIR/../lib/*.jar
CP1=`echo $CP1 | sed "s/ /:/g"`
CP2=$SCRIPT_DIR/../src
MAIN_CLASS=$CP2/Relay.java
DP=$SCRIPT_DIR/../bin

echo $CP1
echo $CP2

rm -R $DP
mkdir $DP

JAVAC_RUN="$JAVAC -cp $CP1:$CP2 -d $DP $MAIN_CLASS"


echo $JAVAC_RUN
$JAVAC_RUN


