FROM openjdk:19-alpine
ENV VERSION 5.8
RUN wget https://languagetool.org/download/LanguageTool-$VERSION.zip && unzip LanguageTool-$VERSION.zip && rm LanguageTool-$VERSION.zip
WORKDIR /LanguageTool-$VERSION/
COPY languagetool.sh /
CMD ["/languagetool.sh"]