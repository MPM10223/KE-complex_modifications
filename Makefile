all:
	sh update-json.sh
	/usr/bin/ruby erb2html.rb < src/index.html.erb > docs/index.html

rebuild:
	rm -f docs/json/*
	$(MAKE) all