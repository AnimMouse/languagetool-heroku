#!/bin/sh
mkdir /tmp/ngrams/ /tmp/ngrams-tmp/
(wget https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip -P /tmp/ && cd /tmp/ngrams-tmp/ && jar -xvf /tmp/ngrams-en-20150817.zip && mv /tmp/ngrams-tmp/* /tmp/ngrams/ && rm -r /tmp/ngrams-en-20150817.zip /tmp/ngrams-tmp/ && echo Ngram has been set up) &
java -Xms256m -Xmx512m -cp languagetool-server.jar org.languagetool.server.HTTPServer --port $PORT --public --allow-origin '*' --languageModel /tmp/ngrams/