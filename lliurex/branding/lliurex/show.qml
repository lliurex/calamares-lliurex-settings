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
        interval: 20000
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
            id: privacidad_llx21
            source: "privacidad_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:120
            y:170
            width:480
            height:420
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:19
            font.bold:true
            text: 
                  qsTr("IMPROVEMENTS IN ACCESS CONTROL AND PRIVACY")
           
        }

        Text {
            x:120
            y:210
            width:490
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:14
            textFormat: Text.RichText
            text:qsTr("<div><h4>")+
            qsTr("<p>LliureX 21 reinforces its access control system, thus improving the privacy of the stored data and the protection of the system.:</p>")+
            qsTr("<ul><li>Login with the <font style='color:#00508f'>digital identity</font>  defined within the framework of the <font style='color:#00508f'>Collaborative Digital Center (CDC)</font>  project.</li>")+
            qsTr("<li><font style='color:#00508f'>LliureX Access Control:</font>  manages who has access to the equipment, by filtering by groups (teachers, students), for specific people or by center code... so access to each equipment can be restricted according to needs.</li>")+
            qsTr("<li><font style='color:#00508f'>Guest User:</font>  generic user without password, with volatile data and configuration; at the next login, no data from the previous one will be accessible.</li></ul></h4></div>")         
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
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Collaborative Digital Center (CDC)")
           
        }

        Text {
            x:340
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
            id: simplayer_llx21
            source: "simplayer_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:50
            y:190
            width:480
            height:420
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("NEW EDUCATIONAL RESOURCES (1)")
           
        }

        Text {
            x:50
            y:230
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:qsTr("<div><h4>")+
            qsTr("<p>LliureX has been enriched with renewed educational resources and classroom utilities to help teachers in their teaching work:</p>")+
            qsTr("<li><font style='color:#00508f'>Simplayer:</font>  It is a platform in which multiple resources, educational activities and simulations for the classroom have been integrated.</li></ul></h4></div>")         
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: alea_llx21
            source: "alea_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:250
            y:190
            width:480
            height:420
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("NEW EDUCATIONAL RESOURCES (2)")
           
        }

        Text {
            x:250
            y:230
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:15
            textFormat: Text.RichText
            text:qsTr("<div><h4>")+
            qsTr("<ul><li><font style='color:#00508f'>Alea:</font>  it can be useful for various classroom dynamics: who is the next person to intervene, what is the next question to be answered... The limit is set by our imagination.</li>")+
            qsTr("<li><font style='color:#00508f'>PintaScreen:</font>  allows you to make marks and annotations on the screen. It can be especially useful in the classroom with interactive displays.</li>")+
            qsTr("<li><font style='color:#00508f'>Vigilia:</font>  allows you to visually display the noise level in the classroom by changing the color of the screen. It can help students become aware of when the noise level is excessive.</li></ul></h4></div>")         
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: tactil_llx21
            source: "tactil_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:110
            y:200
            width:480
            height:420
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("ADAPTATION TO TOUCH DEVICES")
           
        }

        Text {
            x:110
            y:240
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:qsTr("<div><h4>")+
            qsTr("<p>LliureX improves the experience on touch devices with changes in the interface, adapting to the new times and developing new features that will make it easier to use.</p>")+
            qsTr("<p>Work is being done on a new flavor, Touch, which brings together all these advances, where gestures, the on-screen keyboard and new menus allow us to interact as friendly as possible.</p>")       
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
            color: "#00508f"
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
            color: "#00508f"
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
            qsTr("<ul><li><font style='color:#00508f'>Desk model:</font> Any computer can be a LliureX with all its advantages without the need to be in a classroom.</li>")+
            qsTr("<li><font style='color:#00508f'>Classroom model:</font>  Remote control, mobile profiles, LDAP validation ...</li>")+
            qsTr("<li><font style='color:#00508f'>Center model:</font>  All the previous advantages, in each independent classroom, but sharing the LDAP, mobile profiles, Mirror ...</li></ul></h4></div>")         
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
            x:320
            y:180
            width:480
            height:420
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:22
            font.bold:true
            text: 
                  qsTr("Zero-Center (1)")
           
        }

        Text {
            x:320
            y:230
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<p>A more precise categorization that facilitates use, with new blocks: </p>")+
            qsTr("<ul><li><font style='color:#00508f'>Multimedia</font> where you will find a wide variety of applications and additional tools and utilities such as Reimage, papeleria... </li>")+
            qsTr("<li><font style='color:#00508f'>Formative Cycles</font>, administrative Fp, electronics and computing.</li></ul></h4></div>")        
        }
    }

         Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: novedades01_llx21
            source: "novedades01_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:50
            y:140
            width:480
            height:420
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:22
            font.bold:true
            text: 
                  qsTr("Zero-Center (2)")
           
        }

        Text {
            x:50
            y:180
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:14
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<p>Updating of the block of resources:</p>")+
            qsTr("<ul><li><li><font style='color:#00508f'>Educational Resources:</font> renewed didactic resources and applications.</li></li>")+
            qsTr("<li><li><font style='color:#00508f'>Playful-Educational Resources:</font> to learn by playing.</li></li>")+
            qsTr("<li><li><font style='color:#00508f'>Children's Resources:</font> focused on the first educational levels.</li></li></ul>")+
            qsTr("<li>Zero-Center will present a catalog of options adapted to the profile of the person who accesses the system, differentiating between students, teachers and administrators.</li>")+
            qsTr("<li>This reorganization of Zero-Center allows intuitive access to the installation of applications that until now were found in the Media and Children flavors that, therefore, have been discarded for this review of LliureX.</li></h4></div>")        
        }
    }

Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: novedades02_llx21
            source: "novedades02_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:350
            y:170
            width:480
            height:420
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:22
            font.bold:true
            text: 
                  qsTr("Asamblea")
           
        }

        Text {
            x:350
            y:210
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<p>Every morning welcome your infant and primary students with an interactive Assembly.</p>")+
            qsTr("<ul><li><li>Take roll call with the photos of the students.</li></li>")+
            qsTr("<li><li>Check the day of the week, the date and the season.</li></li>")+
            qsTr("<li><li>What menu will we have today in the dining room? </li></li></ul>")+
            qsTr("<li>Edit the main panel with the modules you need to review every day and give this activity a visual plus.</li></h4></div>")        
        }
    }

Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: novedades03_llx21
            source: "novedades03_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }
        Text {
            x:50
            y:140
            width:480
            height:420
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:22
            font.bold:true
            text: 
                  qsTr("ACCESSIBILITY")
           
        }

        Text {
            x:50
            y:175
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:14
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<p>New tools to help you with accessibility:</p>")+
            qsTr("<ul><li><font style='color:#00508f'>Acces Helper</font> brings you a wide variety of settings:</li>")+
            qsTr("<ul><li>Color filters on screen.</li>")+
            qsTr("<li>Zoom settings.</li>")+
            qsTr("<li>High visibility pointers.</li>")+
            qsTr("<li>Manager of files processed by the voice synthesizer.</li>")+
            qsTr("<li>Custom profiles to restore settings at startup or display settings on different computers.</ul>")+
            qsTr("<li><font style='color:#00508f'>Access Dock</font>, quick access bar to the most common settings with additional features such as reading through the voice synthesizer using the system language.</li></ul></h4></div>")        
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: novedades04_llx21
            source: "novedades04_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }

        Text {
            x:350
            y:200
            width:480
            height:250
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:22
            font.bold:true
            text: 
                  qsTr("<p>ONEDRIVE</p>")           
        }

        Text {
            x:325
            y:250
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<ul><li><p>Lliurex facilitates synchronization with your OneDrive space, allowing you to access resources locally without having to log in via the web each time.</p></ul></li></h4></div>")      
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height

        Image {
            id: novedades05_llx21
            source: "novedades05_llx21.png"
            fillMode: Image.Pad
            anchors.top:undefined
            anchors.verticalCenter : undefined
        }

         Text {
            x:60
            y:200
            width:480
            height:250
            color: "#00508f"
            font.family:"noto"
            font.pixelSize:20
            font.bold:true
            text: 
                  qsTr("<p>SYSTEM STABILITY PROTECTION</p>")           
        }

        Text {
            x:50
            y:250
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<ul><li><p>LliureX protects your system by preventing packages that affect its stability from being uninstalled.</p></ul></li>")+
            qsTr("<ul><li><p>In this way we avoid risks in system administration, both by installing and uninstalling different programs.</p></ul></li></h4></div>")       
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
            y:210
            width:440
            height:450
            wrapMode:Text.WordWrap
            color: "#25313D"
            font.family:"noto"
            font.pixelSize:16
            textFormat: Text.RichText
            text:"<div><h4>"+
            qsTr("<p><font style='color:#00508f'>LliureX Remote Installer</font> to the options of scheduling the classroom to be updated, to install an App or run a script, we add the option to install an App from a zomando.</p>")+
            qsTr("<p><font style='color:#00508f'>First Aid Kit</font> now gives more information about the system such as version, server type, implanted model and includes the option to enable / disable pinning from APT.</p>")+
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
            color: "#00508f"
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
            color: "#00508f"
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
            color: "#00508f"
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
            color: "#00508f"
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
