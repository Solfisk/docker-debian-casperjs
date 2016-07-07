FROM debian:jessie

RUN apt-get update && apt-get install -y fontconfig python tar bzip2 npm locales

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Downloading phantomjs
ADD https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2

# Installing phantomjs
RUN cd /tmp/ && tar -xjvf /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 && cp /tmp/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /bin && chmod +x /bin/phantomjs && rm /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2

# Installing casperjs
RUN npm install casperjs --global
