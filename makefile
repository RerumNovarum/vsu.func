CC=pandoc --latex-engine=xelatex -V mainfont='CMU Serif' -V geometry:margin=2cm -S

colloq-2.pdf: colloq-2.markdown
	$(CC) -so colloq-2.pdf colloq-2.markdown

fa.pdf: fa_index fa.tex colloq-2/*.tex
	xelatex fa.tex

fa_index: fa.tex colloq-2/*.tex
	xelatex fa.tex
