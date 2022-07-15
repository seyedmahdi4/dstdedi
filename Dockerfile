FROM debian:latest
RUN apt-get update && \
    apt-get install lib32gcc-s1 wget unzip libcurl3-gnutls -y  && \
    useradd -rm -d /home/dst -s /bin/bash dst
USER dst
WORKDIR /home/dst
COPY --chown=dst:dst install.sh /home/dst/install.sh
RUN chmod +x /home/dst/install.sh && /home/dst/install.sh
COPY --chown=dst:dst example/ /home/dst/.klei/DoNotStarveTogether/example/
COPY --chown=dst:dst script.sh /home/dst/script.sh
RUN  chmod +x /home/dst/script.sh
CMD ["./script.sh"]
