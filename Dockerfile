FROM ubuntu:latest

RUN mkdir -p /structure && \
    chmod 777 /structure 
RUN touch /structure/sync-work && chown sync /structure/sync-work 
RUN touch /structure/nobody-work && chown nobody:nogroup /structure/nobody-work 
RUN useradd -u 5000 collin

CMD ["sh", "-c", "while true; do echo users; done"]

