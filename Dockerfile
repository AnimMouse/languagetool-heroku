FROM openjdk:19-alpine
ENV VERSION 5.6
RUN wget -O - https://languagetool.org/download/LanguageTool-$VERSION.zip | unzip -
RUN mkdir ngrams && cd ngrams && wget -O - https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip | jar -x
WORKDIR /LanguageTool-$VERSION
COPY languagetool.sh /
CMD ["/languagetool.sh"]