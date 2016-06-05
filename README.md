# docker-debian-casperjs

Docker container with debian and Casperjs

Dockerfile sample:

    FROM solfisk/debian-casperjs

    ADD my-crawler.js /usr/local/bin
    CMD /usr/local/bin/casperjs /usr/local/bin/my-crawler.js
