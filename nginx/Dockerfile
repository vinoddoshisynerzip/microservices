FROM n3ziniuka5/ubuntu-oracle-jdk:14.04-JDK8

RUN useradd -ms /bin/bash rezoomex
WORKDIR /home/rezoomex
RUN apt-get update 
RUN apt-get install -y curl wget software-properties-common unzip
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ADD http://downloads.sourceforge.net/project/gate/gate/8.1/gate-8.1-build5169-installer.jar setup/GATE-8.1-developer-8.1.jar
RUN chmod +x /home/rezoomex/setup/GATE-8.1-developer-8.1.jar
ADD gate_installation.xml setup/gate_installation.xml
RUN java -jar /home/rezoomex/setup/GATE-8.1-developer-8.1.jar /home/rezoomex/setup/gate_installation.xml

# Install play
ENV ACTIVATOR_VERSION 1.3.9
WORKDIR /tmp
RUN wget http://downloads.typesafe.com/typesafe-activator/1.3.10/typesafe-activator-${ACTIVATOR_VERSION}-minimal.zip && \
    unzip typesafe-activator-${ACTIVATOR_VERSION}-minimal.zip && \
    mv activator-${ACTIVATOR_VERSION}-minimal /opt/activator && \
    chown -R rezoomex:rezoomex /opt/activator && \
    rm typesafe-activator-${ACTIVATOR_VERSION}-minimal.zip

RUN echo "export PATH=$PATH:/opt/activator/bin" >> /home/rezoomex/.bashrc    

EXPOSE 9000
EXPOSE 9999
EXPOSE 8888
CMD ["bash"]