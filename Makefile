all:
	emacs --batch -l publish_script.el --kill
clean:
	rm -rf public_html/*
