all:    bcotton-resume.html bcotton-resume.pdf

%.html: %.md
	pandoc -t html -o $@ $< -c resume.css --template template.html
#	./resume-uploader $@ $< resume.css
	cp $@ ~/ff-web/lektor/assets/ben/

%.pdf:  %.md
#	markdown2pdf --template=resume-template.tex --xetex $<
	pandoc --template=resume-template.tex-new -o $@ $<
#	./resume-uploader $@ $<
	cp $@ ~/ff-web/lektor/assets/ben/

clean:
	rm -f *~ *.html *.log *.pdf
