#/bin/sh


# Da wird hin installiert
BASE=/opt/Oracle_Java

# prüft ob eine Datei übergeben wurde
if [ $# -eq 0 ];
then
	echo "keine File angegeben"
	exit
fi

# Wenn das Script das erste mal ausgeführt wird prüft er ob das Verzeichnis $BASE besteht
# Wenn NEIN: erstellen
# Wenn JA  : Symlink auf aktuell eingestellte Version löschen
if [ ! -d "$BASE" ]; 
then
	sudo mkdir -p $BASE
else
	sudo rm -r $BASE/latest
fi

# entpacke übergebenes Archiv nach $BASE
sudo tar xvzf $1 -C $BASE

# Lese letzten erstellten Ordner aus
LATEST=$(ls -tr -- $BASE | head -n 1) 

# kreire Symlink 
sudo ln -s $BASE/$LATEST $BASE/latest

# setze und installiere alternatives
sudo update-alternatives --install '/usr/bin/jhat' 'jhat' ''$BASE'/latest/bin/jhat' 1
sudo update-alternatives --set 'jhat' ''$BASE'/latest/bin/jhat'
sudo update-alternatives --install '/usr/bin/javafxpackager' 'javafxpackager' ''$BASE'/latest/bin/javafxpackager' 1
sudo update-alternatives --set 'javafxpackager' ''$BASE'/latest/bin/javafxpackager'
sudo update-alternatives --install '/usr/bin/javac' 'javac' ''$BASE'/latest/bin/javac' 1
sudo update-alternatives --set 'javac' ''$BASE'/latest/bin/javac'
sudo update-alternatives --install '/usr/bin/javah' 'javah' ''$BASE'/latest/bin/javah' 1
sudo update-alternatives --set 'javah' ''$BASE'/latest/bin/javah'
sudo update-alternatives --install '/usr/bin/pack200' 'pack200' ''$BASE'/latest/bin/pack200' 1
sudo update-alternatives --set 'pack200' ''$BASE'/latest/bin/pack200'
sudo update-alternatives --install '/usr/bin/jstat' 'jstat' ''$BASE'/latest/bin/jstat' 1
sudo update-alternatives --set 'jstat' ''$BASE'/latest/bin/jstat'
sudo update-alternatives --install '/usr/bin/jar' 'jar' ''$BASE'/latest/bin/jar' 1
sudo update-alternatives --set 'jar' ''$BASE'/latest/bin/jar'
sudo update-alternatives --install '/usr/bin/jcontrol' 'jcontrol' ''$BASE'/latest/bin/jcontrol' 1
sudo update-alternatives --set 'jcontrol' ''$BASE'/latest/bin/jcontrol'
sudo update-alternatives --install '/usr/bin/native2ascii' 'native2ascii' ''$BASE'/latest/bin/native2ascii' 1
sudo update-alternatives --set 'native2ascii' ''$BASE'/latest/bin/native2ascii'
sudo update-alternatives --install '/usr/bin/wsgen' 'wsgen' ''$BASE'/latest/bin/wsgen' 1
sudo update-alternatives --set 'wsgen' ''$BASE'/latest/bin/wsgen'
sudo update-alternatives --install '/usr/bin/java' 'java' ''$BASE'/latest/bin/java' 1
sudo update-alternatives --set 'java' ''$BASE'/latest/bin/java'
sudo update-alternatives --install '/usr/bin/jrunscript' 'jrunscript' ''$BASE'/latest/bin/jrunscript' 1
sudo update-alternatives --set 'jrunscript' ''$BASE'/latest/bin/jrunscript'
sudo update-alternatives --install '/usr/bin/rmiregistry' 'rmiregistry' ''$BASE'/latest/bin/rmiregistry' 1
sudo update-alternatives --set 'rmiregistry' ''$BASE'/latest/bin/rmiregistry'
sudo update-alternatives --install '/usr/bin/jdb' 'jdb' ''$BASE'/latest/bin/jdb' 1
sudo update-alternatives --set 'jdb' ''$BASE'/latest/bin/jdb'
sudo update-alternatives --install '/usr/bin/schemagen' 'schemagen' ''$BASE'/latest/bin/schemagen' 1
sudo update-alternatives --set 'schemagen' ''$BASE'/latest/bin/schemagen'
sudo update-alternatives --install '/usr/bin/jstatd' 'jstatd' ''$BASE'/latest/bin/jstatd' 1
sudo update-alternatives --set 'jstatd' ''$BASE'/latest/bin/jstatd'
sudo update-alternatives --install '/usr/bin/xjc' 'xjc' ''$BASE'/latest/bin/xjc' 1
sudo update-alternatives --set 'xjc' ''$BASE'/latest/bin/xjc'
sudo update-alternatives --install '/usr/bin/rmid' 'rmid' ''$BASE'/latest/bin/rmid' 1
sudo update-alternatives --set 'rmid' ''$BASE'/latest/bin/rmid'
sudo update-alternatives --install '/usr/bin/jstack' 'jstack' ''$BASE'/latest/bin/jstack' 1
sudo update-alternatives --set 'jstack' ''$BASE'/latest/bin/jstack'
sudo update-alternatives --install '/usr/bin/jsadebugd' 'jsadebugd' ''$BASE'/latest/bin/jsadebugd' 1
sudo update-alternatives --set 'jsadebugd' ''$BASE'/latest/bin/jsadebugd'
sudo update-alternatives --install '/usr/bin/jconsole' 'jconsole' ''$BASE'/latest/bin/jconsole' 1
sudo update-alternatives --set 'jconsole' ''$BASE'/latest/bin/jconsole'
sudo update-alternatives --install '/usr/bin/keytool' 'keytool' ''$BASE'/latest/bin/keytool' 1
sudo update-alternatives --set 'keytool' ''$BASE'/latest/bin/keytool'
sudo update-alternatives --install '/usr/bin/tnameserv' 'tnameserv' ''$BASE'/latest/bin/tnameserv' 1
sudo update-alternatives --set 'tnameserv' ''$BASE'/latest/bin/tnameserv'
sudo update-alternatives --install '/usr/bin/javaws' 'javaws' ''$BASE'/latest/bin/javaws' 1
sudo update-alternatives --set 'javaws' ''$BASE'/latest/bin/javaws'
sudo update-alternatives --install '/usr/bin/rmic' 'rmic' ''$BASE'/latest/bin/rmic' 1
sudo update-alternatives --set 'rmic' ''$BASE'/latest/bin/rmic'
sudo update-alternatives --install '/usr/bin/wsimport' 'wsimport' ''$BASE'/latest/bin/wsimport' 1
sudo update-alternatives --set 'wsimport' ''$BASE'/latest/bin/wsimport'
sudo update-alternatives --install '/usr/bin/appletviewer' 'appletviewer' ''$BASE'/latest/bin/appletviewer' 1
sudo update-alternatives --set 'appletviewer' ''$BASE'/latest/bin/appletviewer'
sudo update-alternatives --install '/usr/bin/extcheck' 'extcheck' ''$BASE'/latest/bin/extcheck' 1
sudo update-alternatives --set 'extcheck' ''$BASE'/latest/bin/extcheck'
sudo update-alternatives --install '/usr/bin/jinfo' 'jinfo' ''$BASE'/latest/bin/jinfo' 1
sudo update-alternatives --set 'jinfo' ''$BASE'/latest/bin/jinfo'
sudo update-alternatives --install '/usr/bin/idlj' 'idlj' ''$BASE'/latest/bin/idlj' 1
sudo update-alternatives --set 'idlj' ''$BASE'/latest/bin/idlj'
sudo update-alternatives --install '/usr/bin/jmap' 'jmap' ''$BASE'/latest/bin/jmap' 1
sudo update-alternatives --set 'jmap' ''$BASE'/latest/bin/jmap'
sudo update-alternatives --install '/usr/bin/serialver' 'serialver' ''$BASE'/latest/bin/serialver' 1
sudo update-alternatives --set 'serialver' ''$BASE'/latest/bin/serialver'
sudo update-alternatives --install '/usr/bin/jps' 'jps' ''$BASE'/latest/bin/jps' 1
sudo update-alternatives --set 'jps' ''$BASE'/latest/bin/jps'
sudo update-alternatives --install '/usr/bin/javap' 'javap' ''$BASE'/latest/bin/javap' 1
sudo update-alternatives --set 'javap' ''$BASE'/latest/bin/javap'
sudo update-alternatives --install '/usr/bin/jcmd' 'jcmd' ''$BASE'/latest/bin/jcmd' 1
sudo update-alternatives --set 'jcmd' ''$BASE'/latest/bin/jcmd'
sudo update-alternatives --install '/usr/bin/servertool' 'servertool' ''$BASE'/latest/bin/servertool' 1
sudo update-alternatives --set 'servertool' ''$BASE'/latest/bin/servertool'
sudo update-alternatives --install '/usr/bin/jvisualvm' 'jvisualvm' ''$BASE'/latest/bin/jvisualvm' 1
sudo update-alternatives --set 'jvisualvm' ''$BASE'/latest/bin/jvisualvm'
sudo update-alternatives --install '/usr/bin/javadoc' 'javadoc' ''$BASE'/latest/bin/javadoc' 1
sudo update-alternatives --set 'javadoc' ''$BASE'/latest/bin/javadoc'
sudo update-alternatives --install '/usr/bin/jarsigner' 'jarsigner' ''$BASE'/latest/bin/jarsigner' 1
sudo update-alternatives --set 'jarsigner' ''$BASE'/latest/bin/jarsigner'
sudo update-alternatives --install '/usr/bin/unpack200' 'unpack200' ''$BASE'/latest/bin/unpack200' 1
sudo update-alternatives --set 'unpack200' ''$BASE'/latest/bin/unpack200'
sudo update-alternatives --install '/usr/bin/ControlPanel' 'ControlPanel' ''$BASE'/latest/bin/ControlPanel' 1
sudo update-alternatives --set 'ControlPanel' ''$BASE'/latest/bin/ControlPanel'
sudo update-alternatives --install '/usr/bin/orbd' 'orbd' ''$BASE'/latest/bin/orbd' 1
sudo update-alternatives --set 'orbd' ''$BASE'/latest/bin/orbd'
sudo update-alternatives --install '/usr/bin/policytool' 'policytool' ''$BASE'/latest/bin/policytool' 1
sudo update-alternatives --set 'policytool' ''$BASE'/latest/bin/policytool'
sudo update-alternatives --install '/usr/bin/java-rmi.cgi' 'java-rmi.cgi' ''$BASE'/latest/bin/java-rmi.cgi' 1
sudo update-alternatives --set 'java-rmi.cgi' ''$BASE'/latest/bin/java-rmi.cgi'
