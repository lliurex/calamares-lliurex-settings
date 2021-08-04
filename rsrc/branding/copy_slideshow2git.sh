#!/bin/bash
BRANCH=$(git branch | sed -nr 's/\*\s(.*)/\1/p')
NAME_REPOSITORY=$(basename `git rev-parse --show-toplevel`)
if [[ $NAME_REPOSITORY == *"calamares-lliurex-settings"* ]]; then
	if [ -d .git ]; then
		if [ -z $BRANCH ] || [ $BRANCH != "master" ]; then
		    echo "You are not in MASTER branch..... BE CAREFUL."
		    exit 1
		else
			if [ -d "/home/lliurex/ubiquity/21" ];then
				echo "All SVG files from /home/lliurex/ubiquity/21 are now in rsrc/branding/"
				cp /home/lliurex/ubiquity/21_07/*.svg rsrc/branding/
			fi
			if [ -f "/usr/share/calamares/branding/lliurex/show.qml" ];then
				echo "show.qml file copy in ./lliurex/branding/lliurex/"
				cp /usr/share/calamares/branding/lliurex/show.qml ./lliurex/branding/lliurex/
			fi
			if [ -d "/usr/share/calamares/branding/lliurex/lang" ];then
				echo "Language files copy in ./lliurex/branding/lliurex/lang/"
				cp /usr/share/calamares/branding/lliurex/lang/* ./lliurex/branding/lliurex/lang/
			fi
			if [ -d "/usr/share/calamares/branding/lliurex/lang" ];then
				echo "png files copy in ./lliurex/branding/lliurex/"
				cp /usr/share/calamares/branding/lliurex/*.png ./lliurex/branding/lliurex/
			fi
		fi
	else
		echo "You are not in git repository root, please you hav to stay at start folder of project."
		exit 1
	fi
else
	echo "You are not in calamares-lliurex-settings, please you hav to stay at start folder of project."
	echo $NAME_REPOSITORY
	exit 1
fi
