SVG_FILES = $(shell find illustrations/ -type f -name '*.svg')
PNG_FILES = $(patsubst illustrations/%.svg, org/img/%.png, $(SVG_FILES))

.PHONY: images

all:
	emacs --batch -l publish_script.el --kill

clean:
	rm -rf org/img/*
	rm -rf public_html/*

images: $(PNG_FILES)

./org/img/%.png: ./illustrations/%.svg
	@mkdir -p "$(@D)"
	@echo "convert \"$<\" to \"$@\""
	inkscape -f "$<" -e "$@" --export-area-drawing --export-dpi 150
