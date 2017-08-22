FROM gcc:latest
RUN apt-get install git gcc -y
RUN https://github.com/robertdavidgraham/telnetlogger.git
WORKDIR /telnetlogger/
RUN git clone https://github.com/robertdavidgraham/telnetlogger.git
RUN MAKE
RUN rm ips.txt &&  rm passwords.txt
RUN touch ips.txt && touch passwords.txt
EXPOSE 23
ENTRYPOINT [ "telnetlogger" ]
CMD [ "-p passwds.txt -i ips.txt" ]
