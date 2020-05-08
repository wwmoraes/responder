FROM alpine

COPY ./rejector.sh /usr/local/bin/rejector

CMD ["rejector"]
ENTRYPOINT ["rejector"]
