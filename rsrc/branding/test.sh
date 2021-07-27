#!/bin/bash
cp /home/lliurex/Documentos/lliurex/*.png /usr/share/calamares/branding/lliurex/
qmlscene -translation /usr/share/calamares/branding/lliurex/lang/calamares-lliurex_ca@valencia.qm -I /usr/share/calamares/qml -geometry 810x485 show.qml