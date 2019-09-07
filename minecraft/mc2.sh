apt-get update -y
apt-get install -y openjdk-8-jre-headless

mkdir /opt/minecraft
cd /opt/minecraft
echo eula=true > ./eula.txt
wget https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar -O /opt/minecraft/server.jar
chmod +x /opt/minecraft/server.jar

java -Xmx1024M -Xms1024M -jar server.jar nogui
