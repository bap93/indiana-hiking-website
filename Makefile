all: pages

pages:
	rm -rf dist/*
	mkdir -p dist
	mkdir -p dist/hiking-101
	mkdir -p dist/trails-101
	mkdir -p dist/images
	cp images/* dist/images/
	cp index.css dist/
	PAGE="home-templ.html" j2 -e PAGE base-templ.html > dist/index.html
	PAGE="gear-templ.html" j2 -e PAGE base-templ.html > dist/hiking-101/gear.html
	PAGE="safety-templ.html" j2 -e PAGE base-templ.html > dist/hiking-101/safety.html
	PAGE="backpacking-templ.html" j2 -e PAGE base-templ.html > dist/trails-101/backpacking.html
	PAGE="hiking-templ.html" j2 -e PAGE base-templ.html > dist/trails-101/hiking.html
	PAGE="resources-templ.html" j2 -e PAGE base-templ.html > dist/resources.html


.PHONY: pages