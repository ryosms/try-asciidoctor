.PHONY: pdf html manual-pdf manual-html erd-pdf erd-html spec-pdf spec-html

pdf: manual-pdf erd-pdf spec-pdf

html: manual-html erd-html spec-html

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

spec-pdf:
	asciidoctor-pdf \
		-r asciidoctor-diagram \
		-r ${CJK_CONFIG} \
		-r asciidoctor-pdf-cjk-kai_gen_gothic \
		-a pdf-style=KaiGenGothicJP \
		-o out/pdf/spec.pdf \
		specifications/00_cover.adoc

spec-html:
	asciidoctor \
		-r asciidoctor-diagram \
		-r ${CJK_CONFIG} \
		-r asciidoctor-pdf-cjk-kai_gen_gothic \
		-a pdf-style=KaiGenGothicJP \
		-o out/html/specifications/spec.html \
		specifications/00_cover.adoc
