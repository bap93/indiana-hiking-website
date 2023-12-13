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
	META_DESC="Hiking website that breaks down the basics for hiking and backpacking, gives recomendations for trails, gear and safety" PAGE="home-templ.html" j2 -e META_DESC -e PAGE base-templ.html > dist/finalproject/index.html
	META_DESC="Gear recomendations for first time hikgers and backpackers along with store recomendations" PAGE="gear-templ.html" j2 -e META_DESC -e PAGE base-templ.html > dist/finalproject/hiking-101/gear.html
	META_DESC="Safety tips for hiking and backpacking, stranger danger tips" PAGE="safety-templ.html" j2 -e META-DESC -e PAGE base-templ.html > dist/finalproject/hiking-101/safety.html
	META_DESC="Best backpacking trails for beginners and where they are located along with length" PAGE="backpacking-templ.html" j2 -e META_DESC -e PAGE base-templ.html > dist/finalproject/trails-101/backpacking.html
	META_DESC="Best hiking trails list along with description and application recomendations" PAGE="hiking-templ.html" j2 -e META_DESC -e PAGE base-templ.html > dist/finalproject/trails-101/hiking.html
	META_DESC="Links to resources like DNR pages, forestry page, and shopping, along with a question forum" PAGE="resources-templ.html" j2 -e META_DESC -e PAGE base-templ.html > dist/finalproject/resources.html


.PHONY: pages