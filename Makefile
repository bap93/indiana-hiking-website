all: pages

pages:
	rm -rf dist/*
	mkdir -p dist
	mkdir -p dist/hiking-101
	PAGE="home-templ.html" j2 -e PAGE base-templ.html > dist/index.html
	PAGE="gear-templ.html" j2 -e PAGE base-templ.html > dist/hiking-101/gear.html
	PAGE="safety-templ.html" j2 -e PAGE base-templ.html > dist/hiking-101/safety.html

.PHONY: pages