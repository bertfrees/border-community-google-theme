site = "https://raw.github.com/bertfrees/border-community-google-theme/master"

all: theme.xml

theme.xml: theme.xml.in
	sed -e "s|@site@|$(site)|g" $< >$@

clean:
	rm theme.xml