FROM asciidoctor/docker-asciidoctor:latest

ENV CJK_CONFIG /usr/local/lib/cjk.rb

RUN gem install --no-document \
        asciidoctor-pdf-cjk-kai_gen_gothic \
        prawn \
        prawn-svg \
        prawn-templates \
    && asciidoctor-pdf-cjk-kai_gen_gothic-install

ADD cjk.rb ${CJK_CONFIG}
