FROM debian:latest
RUN apt-get update && \
    apt-get install  --no-install-recommends ca-certificates lib32stdc++6 libcurl3-gnutls:i386 libcurl3-gnutls lib32gcc-s1 lib32gcc1 wget unzip gosu screen -y && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +s /usr/sbin/gosu && \
    useradd -rm -d /home/dst -s /bin/bash dst
USER dst
WORKDIR /home/dst
COPY --chown=dst:dst install.sh /home/dst/install.sh
RUN chmod +x /home/dst/install.sh && /home/dst/install.sh

COPY --chown=dst:dst example_world/ /home/dst/.klei/DoNotStarveTogether/example_world/
COPY --chown=dst:dst example_Reforged/ /home/dst/.klei/DoNotStarveTogether/example_Reforged/
COPY --chown=dst:dst example_Regorge/ /home/dst/.klei/DoNotStarveTogether/example_Regorge/

COPY --chown=dst:dst tools/* run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*
CMD ["run.sh"]
