/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 7000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: welcome_background
            source: "welcome_ubiquity.png"
            fillMode: Image.Pad
        }
        Text {
            x:335
            y:170
            width:430
            height:510
            text: 
                  qsTr("LliureX is an initiative driven by the Department of Education of Regional Government with the purpose of using free software ICTs in the Valencian Education System, so as to allow its users to enjoy a thoughtful and fine user experience.<br/>")+
                  qsTr("LliureX is a Custom Ubuntu GNU/Linux Distribution (CDD) intended as an operating system for educational institutions.")+"<br/><br/>"+
                  qsTr("While LliureX is installed, this slideshow will show you around its main features.")
            wrapMode: Text.WordWrap
            color:"#25313D"
            font.family:"noto"
            font.bold:true
            font.pixelSize:16
        }
    }

     Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: kde_neon
            source: "kde_neon.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:60
            y:210
            width:450
            height:420
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Bassed on KDE Neon")
           
        }

        Text {
            x:60
            y:260
            width:420
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:qsTr("<div><h4>")+
            qsTr("<p>LliureX develops its full potential from KDE NEON.</p>")+
            qsTr("<p>In this way we have a very solid base such as that offered by Ubuntu LTS and a modern desktop that is constantly updated.</p>")                  
           
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: finish_background
            source: "finish_ubiquity.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:50
            y:130
            width:430
            height:500
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Getting Help")
           
        }

        Text {
            x:50
            y:180
            width:470
            height:500
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:qsTr("<div><h4>")+
            qsTr("<p>If you need help, you can contact us:</p>")+
            qsTr("<ul><li>Using our forum webpage at Mestre a casa https://mestreacasa.gva.es/web/lliurex/forums</li>")+
            qsTr("<li>Subscribe & collaborate with LliureX project at GitHub.</li>")+
            qsTr("<li>At our Telegram account https://t.me/comunitat_lliurex</li></ul>")+
            qsTr("<div><p>The installation will finish soon. We hope you enjoy LliureX 21.</p></div></h4></div></div>")

                  
           
        }
    }

   


    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
