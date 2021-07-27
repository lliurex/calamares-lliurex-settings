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
            id: modelos_llx21
            source: "modelos_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:180
            y:170
            width:480
            height:420
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Usage Models")
           
        }

        Text {
            x:180
            y:210
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:qsTr("<div><h4>")+
            qsTr("<p>Lliurex makes it easy to use with three different models:</p>")+
            qsTr("<ul><li><font style='color:#642e3e'>Desk model:</font> Any computer can be a LliureX with all its advantages without the need to be in a classroom.</li>")+
            qsTr("<li><font style='color:#642e3e'>Classroom model:</font>  Remote control, mobile profiles, LDAP validation ...</li>")+
            qsTr("<li><font style='color:#642e3e'>Center model:</font>  All the previous advantages, in each independent classroom, but sharing the LDAP, mobile profiles, Mirror ...</li></ul></h4></div>")         
        }
    }

     Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: cdc_llx21
            source: "cdc_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:320
            y:170
            width:480
            height:420
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Collaborative Digital Center (CDC)")
           
        }

        Text {
            x:320
            y:210
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<p>LliureX will be integrated with the Collaborative Digital Center project that has been promoted by the Generalitat Valenciana and that will allow having a single user (digital identity) together with their data available at any center in the Community.</p>")+
            qsTr("<p>In addition to email, each user will have storage space in the cloud, the possibility of videoconferencing and other collaborative work tools.</p>")+
            "</h4></div>"        
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: novedades1_llx21
            source: "novedades1_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:60
            y:190
            width:480
            height:420
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Novelties")
           
        }

        Text {
            x:60
            y:230
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<p>A lot of effort has been made to modernize the applications own LLiureX, like Java panel, Lliurex Shutdowner and Lliurex flavours selector.</p>")+
            qsTr("<p>Betting on a more current design, facilitating its usability, and integrating them into the new KDE desktop.</p>")+
            "</h4></div>"        
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: novedades2_llx21
            source: "novedades2_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:320
            y:170
            width:480
            height:420
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Novelties")
           
        }

        Text {
            x:320
            y:210
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<p>LliureX Remote Installer to the options of scheduling the classroom to be updated, to install an App or run a script, we add the option to install an App from a zomando.</p>")+
            qsTr("<p>First Aid Kit now gives more information about the system such as version, server type, implanted model and includes the option to enable / disable pinning from APT.</p>")+
            "</h4></div>"        
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: lumi_llx21
            source: "lumi_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:260
            y:170
            width:480
            height:420
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("LUMI Interactive Content with H5P")
           
        }

        Text {
            x:260
            y:210
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+"<p>"+
            qsTr("You can create, edit and view interactive HTML elements (H5P packages) in your desktop environment.")+"</p>"+
            "<p>"+qsTr("Unlike all other H5P systems, Lumi does not require Moodle, WordPress, or Drupal. You can simply create interactive content and share it with your students by exporting it as an HTML file and uploading it to Aules.")+"</p>"+
            "</h4></div>"       
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: llxstudio_llx21
            source: "llxstudio_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:330
            y:170
            width:480
            height:420
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Lliurex Edition Studio")
           
        }

        Text {
            x:330
            y:210
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+"<p>"+
            qsTr("We put at your disposal all the necessary resources to generate multimedia didactic material:")+"</p>"+
            "<ul><li>"+qsTr("Audio editors, Audacity, VLC.")+"</li>"+
            "<li>"+qsTr("Video editors, Cinelerra, OBS Studio, Shotcut...")+"</li>"+
            "<li>"+qsTr("Format converters, Handbrake, Selena Media Converter.")+"</li>"+
            "<li>"+qsTr("All necessary codecs.")+"</li></ul>"+
            "<div><p>"+qsTr("With LliureX you will have a multimedia studio.")+"</p></div>"+
            "</h4></div>"
        }
    }


    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: print3d_llx21
            source: "print3d_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:60
            y:170
            width:480
            height:420
            color: "#642e3e"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("3D Print")
           
        }

        Text {
            x:60
            y:210
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+"<p>"+
            qsTr("In lliurex 21 it will be easier for you to work with 3D printers. Thanks to our zomando you can have the most famous slicer tools at your fingertips:")+"</p>"+
            "<ul><li>"+qsTr("Slic3r.")+"</li>"+
            "<li>"+qsTr("Ultimaker Cura.")+"</li>"+
            "<li>"+qsTr("PrusaSlicer.")+"</li></ul>"+
            "</h4></div>"
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
