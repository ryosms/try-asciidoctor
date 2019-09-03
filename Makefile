.PHONY: pdf html manual-pdf manual-html erd-pdf erd-html

pdf: manual-pdf erd-pdf

html: manual-html erd-html

manual-pdf:
	asciidoctor-pdf \
		-r asciidoctor-diagram \
		-r ${CJK_CONFIG} \
		-r asciidoctor-pdf-cjk-kai_gen_gothic \
		-a pdf-style=KaiGenGothicJP \
		-o out/pdf/manual.pdf \
		manual/manual.adoc

manual-html:
	asciidoctor \
		-r asciidoctor-diagram \
		-r ${CJK_CONFIG} \
		-r asciidoctor-pdf-cjk-kai_gen_gothic \
		-a pdf-style=KaiGenGothicJP \
		-o out/html/manual/manual.html \
		manual/manual.adoc

erd-pdf:
	asciidoctor-pdf \
		-r asciidoctor-diagram \
		-r ${CJK_CONFIG} \
		-r asciidoctor-pdf-cjk-kai_gen_gothic \
		-a pdf-style=KaiGenGothicJP \
		-o out/pdf/erd.pdf \
		ER-diagram/erd.adoc

erd-html:
	asciidoctor \
		-r asciidoctor-diagram \
		-r ${CJK_CONFIG} \
		-r asciidoctor-pdf-cjk-kai_gen_gothic \
		-a pdf-style=KaiGenGothicJP \
		-o out/html/ER-diagram/erd.html \
		ER-diagram/erd.adoc
