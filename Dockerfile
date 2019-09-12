FROM centos:7

RUN yum -y update
RUN yum -y install java-1.8.0-openjdk

 
#FROM store/oracle/serverjre:8  

RUN mkdir /opt/aem
WORKDIR /opt/aem/

ENV CQ_JVM_OPTS   "-server -Xmx4g -Xms4g -Djava.awt.headless=true"

COPY ./AEM_6.4_Quickstart.jar /opt/aem/AEM_6.4_Quickstart.jar
#COPY ./quickstart /opt/aem/start
RUN cd /opt/aem  &&  java -Djava.awt.headless=true -jar AEM_6.4_Quickstart.jar -unpack

#ENTRYPOINT ["/opt/aem/crx-quickstart/bin/quickstart"]


