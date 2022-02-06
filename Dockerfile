FROM openjdk:17-alpine
ENV VERSION 5.6
RUN wget -O - https://languagetool.org/download/LanguageTool-$VERSION.zip | unzip -
WORKDIR /LanguageTool-$VERSION
COPY languagetool.sh /
CMD ["/languagetool.sh"]