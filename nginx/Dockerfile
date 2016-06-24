FROM nginx
RUN useradd -ms /bin/bash rezoomex
WORKDIR /home/rezoomex
RUN apt-get update 
RUN apt-get install -y curl wget software-properties-common unzip
ADD dafault /etc/nginx/conf.d/default
RUN mkdir /usr/share/nginx/rezoomex /home/rezoomex/code 
EXPOSE 80
CMD ["bash"]