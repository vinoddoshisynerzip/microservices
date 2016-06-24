FROM nginx
RUN useradd -ms /bin/bash rezoomex
WORKDIR /home/rezoomex
RUN apt-get update 
RUN apt-get install -y curl wget software-properties-common unzip
ADD default /etc/nginx/conf.d/default
RUN mkdir /usr/share/nginx/rezoomex /home/rezoomex/code 
EXPOSE 80
CMD ["bash"]

curl -X GET -u admin:admin123 http://localhost:8081/nexus/content/repositories/snapshots/Rezoomex/OrphanAllocation/OrphanAllocationApplication/0.1.2-SNAPSHOT/OrphanAllocationApplication-0.1.2-20160526.092114-2.zip --output app.zip
