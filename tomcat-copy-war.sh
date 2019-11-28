# mv target/webapp*.war target/webapp.war

# stop tomcat

ssh ec2-user@172.31.4.187 /opt/tomcat8/bin/shutdown.sh

# copy war to tomcat

scp target/webapp.war ec2-user@172.31.4.187:/opt/tomcat8/webapps/

# start tomcat

ssh ec2-user@172.31.4.187 /opt/tomcat8/bin/startup.sh
