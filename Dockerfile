FROM diwo.teranetworks.com:8123/diwo-common-env:latest 
 # Download latest artifact from Nexus 
RUN wget --user admin --password '36uk!x22BDd@m8*' "http://diwo.teranetworks.com:51081/nexus/service/local/artifact/maven/redirect?g=com.loven.diwo&a=hellodevops&r=snapshots&v=LATEST&p=jar" -O hellodevops.jar --content-disposition --content-disposition 
RUN cp -r hellodevops*jar /tmp/ 
RUN rm -f hellodevops*jar 
