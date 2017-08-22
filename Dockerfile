FROM gcc:latest
RUN git clone https://github.com/robertdavidgraham/telnetlogger.git
WORKDIR /telnetlogger/
RUN gcc telnetlogger.c -o telnetlogger -lpthread
RUN rm ips.txt &&  rm passwords.txt
RUN touch ips.txt && touch passwords.txt
EXPOSE 23
ENTRYPOINT [ "telnetlogger" ]
CMD [ "-p passwds.txt -i ips.txt" ]
