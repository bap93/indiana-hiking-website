all: pages

pages:
	rm -rf dist/*
	mkdir -p dist
	mkdir -p dist/finalproject/
	mkdir -p dist/finalproject/hiking-101
	mkdir -p dist/finalproject/trails-101
	mkdir -p dist/finalproject/images
	cp images/* dist/finalproject/images/
	cp index.css dist/finalproject/
	PAGE="home-templ.html" j2 -e PAGE base-templ.html > dist/finalproject/index.html
	PAGE="gear-templ.html" j2 -e PAGE base-templ.html > dist/finalproject/hiking-101/gear.html
	PAGE="safety-templ.html" j2 -e PAGE base-templ.html > dist/finalproject/hiking-101/safety.html
	PAGE="backpacking-templ.html" j2 -e PAGE base-templ.html > dist/finalproject/trails-101/backpacking.html
	PAGE="hiking-templ.html" j2 -e PAGE base-templ.html > dist/finalproject/trails-101/hiking.html
	PAGE="resources-templ.html" j2 -e PAGE base-templ.html > dist/finalproject/resources.html


.PHONY: pages