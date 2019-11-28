mv target/myweb*.war target/myweb.war

# stop tomcat

ssh ec2-user@172.31.4.187 /opt/tomcat8/bin/shutdown.sh

# copy war to tomcat

scp target/myweb.war ec2-user@172.31.4.187:/opt/tomcat/webapps/

# start tomcat

ssh ec2-user@172.31.4.187 /opt/tomcat8/bin/startup.sh
