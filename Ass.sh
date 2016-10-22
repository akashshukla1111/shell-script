 # script for running ass service from intellij using webapp-runner 
 
if [ $1 ] && [ $1 = "debug" ]; then
     toilet -t -f mono9 -F gay Ass in debug mode # brew install toilet
     #java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=9000,suspend=n -jar ././../webapp-runner-8.0.33.0.jar ././actsearchservService/target/ROOT.war
else
     toilet -t -f mono9 -F gay Ass in Running mode 
     # java -jar ././../webapp-runner-8.0.33.0.jar ././actsearchservService/target/ROOT.war
fi