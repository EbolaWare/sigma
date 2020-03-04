#!/bin/bash
help='You have several options when running this container:\n
USAGE: docker run --rm sigma [command]\n
       docker run --rm -it sigma bash (gives bash execution environment)\n\n
[commands]\n
help	\tgives this message\n
tools	\tlists tools made by Neo23x0 & friends\n
contrib	\tlists tools made by the community, but trusted by developers\n
sigmac	\tconvert sigma rules to queries for... well lots of stuff.\n\n
I recommend you visit the github of the maintainer.\n
https://github.com/Neo23x0/sigma\n'
case $1 in 
	help) echo -e $help ;;
	tools) ls /opt/sigma/tools/ ;;
	contrib) ls /opt/sigma/contrib/ ;;
	sigmac) tools/$* ;;
esac
