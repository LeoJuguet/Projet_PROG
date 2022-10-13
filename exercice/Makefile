all: test_list.ml rapport.pdf test_my_list
	ocamlc -o test_list test_list.ml

clean:
	rm -rf test_my_list my_list rapport test_list *.cmi *.cmo *~ *.pdf *.aux _* *.sty *.log

rapport.pdf : rapport.tex
	pdflatex -shell-escape rapport.tex

test_my_list: test_my_list.ml my_list.ml
	ocamlc -o test_my_list my_list.mli my_list.ml  test_my_list.ml
