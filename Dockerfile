FROM debian:latest
RUN apt-get update && \
    apt-get install lib32gcc-s1 wget unzip libcurl3-gnutls gosu screen -y  && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +s /usr/sbin/gosu && \
    useradd -rm -d /home/dst -s /bin/bash dst
USER dst
WORKDIR /home/dst
COPY --chown=dst:dst install.sh /home/dst/install.sh
RUN chmod +x /home/dst/install.sh && /home/dst/install.sh
COPY --chown=dst:dst example_world/ /home/dst/.klei/DoNotStarveTogether/example_world/
COPY --chown=dst:dst example_Reforged/ /home/dst/.klei/DoNotStarveTogether/example_Reforged/
COPY --chown=dst:dst run.sh /home/dst/run.sh
COPY --chown=dst:dst tools/* /usr/local/bin/
RUN chmod +x /home/dst/run.sh && chmod +x /usr/local/bin/*
CMD ["./run.sh"]
