FROM debian:jessie

RUN apt-get update && apt-get install -y fontconfig python tar bzip2

# Downloading phantomjs
ADD https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2

# Installing phantomjs
RUN cd /tmp/ && tar -xjvf /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 && cp /tmp/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /bin && chmod +x /bin/phantomjs && rm /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2

# Installing casperjs
ADD https://github.com/n1k0/casperjs/archive/1.1-beta5.tar.gz /usr/lib/casperjs/casperjs-1.1-beta5.tar.gz

RUN cd /usr/lib/casperjs && tar -xvf /usr/lib/casperjs/casperjs-1.1-beta5.tar.gz && ln -sf /usr/lib/casperjs/casperjs-1.1-beta5/bin/casperjs /usr/local/bin/casperjs && rm -rf /usr/lib/casperjs/casperjs-1.1-beta5.tar.gz
