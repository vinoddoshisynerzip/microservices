FROM n3ziniuka5/ubuntu-oracle-jdk:14.04-JDK8

RUN useradd -ms /bin/bash rezoomex
WORKDIR /home/rezoomex
RUN apt-get update 
RUN apt-get install -y curl wget software-properties-common
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ADD http://downloads.sourceforge.net/project/gate/gate/8.1/gate-8.1-build5169-installer.jar setup/GATE-8.1-developer-8.1.jar
RUN chmod +x /home/rezoomex/setup/GATE-8.1-developer-8.1.jar
ADD gate_installation.xml setup/gate_installation.xml
RUN java -jar /home/rezoomex/setup/GATE-8.1-developer-8.1.jar /home/rezoomex/setup/gate_installation.xml

CMD ["bash"]
