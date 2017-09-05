FROM alpine:3.6
RUN apk add --no-cache git screen gcc musl-dev nano openssl build-base bash 
RUN git clone https://github.com/robertdavidgraham/telnetlogger.git
WORKDIR /telnetlogger/
RUN gcc telnetlogger.c -o telnetlogger -lpthread
RUN rm ips.txt &&  rm passwords.txt
RUN touch ips.txt && touch passwords.txt
EXPOSE 23
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
