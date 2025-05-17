all:
	echo "Done"

install:
	cp -r . ~/.config/nvim
	nvim -c ':q'
