#!/bin/sh
mkdir /tmp/ngrams/ /tmp/ngrams-tmp/
(cd /tmp/ngrams-tmp/ && wget -O - https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip | jar -x && mv /tmp/ngrams-tmp/* /tmp/ngrams/ && echo Ngram has been set up) &
java -Xms256m -Xmx512m -cp languagetool-server.jar org.languagetool.server.HTTPServer --port $PORT --public --allow-origin '*' --languageModel /tmp/ngrams/