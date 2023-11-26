all: pages

pages:
	mkdir -p dist
	rm -rf dist/*
	PAGE="home-templ.html" j2 -e PAGE base-templ.html > dist/index.html

.PHONY: pages