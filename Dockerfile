FROM gcc:4.9
RUN https://github.com/robertdavidgraham/telnetlogger.git
WORKDIR /telnetlogger/
RUN git clone https://github.com/robertdavidgraham/telnetlogger.git
run MAKE
