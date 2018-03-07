FROM diwo.teranetworks.com:8123/diwo-common-env:latest 
 # Download latest artifact from Nexus 
RUN wget --user admin --password 'diwo!@#' "http://lovenserver:8081/service/local/artifact/maven/redirect?g=com.loven.diwo&a=hellodevops&r=snapshots&v=LATEST&p=jar" -O hellodevops.jar --content-disposition 
RUN cp -r hellodevops*jar /tmp/ 
RUN rm -f hellodevops*jar 
