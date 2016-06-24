FROM mongo:2.6.7
RUN useradd -ms /bin/bash rezoomex
WORKDIR /home/rezoomex
ADD users.js /home/rezoomex/users.js
RUN mongo rezoomex < /home/rezoomex/users.js
EXPOSE 27017
CMD ["bash"]
