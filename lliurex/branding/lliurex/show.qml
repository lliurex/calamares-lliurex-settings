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


    function resize_x(padre, imagen, x){
	return x * Math.min(padre.width / imagen.sourceSize.width, padre.height / imagen.sourceSize.height) + (padre.width - imagen.sourceSize.width * Math.min(padre.width / imagen.sourceSize.width , padre.height / imagen.sourceSize.height )) / 2
    }

    function resize_y(padre, imagen, y ){
	return y * Math.min(padre.width / imagen.sourceSize.width, padre.height / imagen.sourceSize.height) + (padre.height - imagen.sourceSize.height * Math.min(padre.width / imagen.sourceSize.width, padre.height / imagen.sourceSize.height )) / 2
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
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: welcome_background
	    source: "2.png"
	    width: parent.width
	    height: parent.height
            fillMode: Image.PreserveAspectFit
    }
        Text {
		x: resize_x( parent, welcome_background, 200) 
		y: resize_y( parent, welcome_background, 700)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y
	    text:
		"<p>"+
	    	qsTr("LliureX 25 is an initiative promoted by the Department of Education, Culture, Universities, and Employment of the Generalitat Valenciana to use open-source ICT in the Valencian educational system, allowing users to enjoy a pleasant and simple experience.") +
	        "</p><p>" + 
                qsTr("LliureX is a customized distribution of Ubuntu GNU/Linux (CDD) designed as an operating system for educational institutions.")+
	    	"</p><p>" + 
                qsTr("While LliureX 25 is being installed, this presentation will show you its main features.") + 
		    "</p>"

            wrapMode: Text.WordWrap
            color:"#25313D"
            font.family:"noto"
            font.pixelSize:14
        }
    }

         Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: privacidad_llx21
            source: "3.png"
            fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height
        }
        Text {
		x: resize_x( parent, welcome_background, 200) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:14
            font.bold:true
            text: 
                  qsTr("IMPROVEMENTS IN ACCESS CONTROL AND PRIVACY")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 200) 
		y: resize_y( parent, welcome_background, 770)
            width: resize_x( parent, welcome_background, 2000) - x
            height: resize_y( parent, welcome_background, 2100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text:
            qsTr("LliureX 25 reinforces its access control system, thus improving the privacy of stored data and system protection:")+
            "<ul>" +
            "<li>" + qsTr("Login with the digital identity.") + "</li>"+
            "<li>" + qsTr("<strong>LliureX Access Control:</strong> manages who has access to the device through filtering by groups (teachers, students), specific individuals, or center codes. This way, access to each device can be restricted according to specific needs.")+ "</li>"+
            "<li>" + qsTr("<strong>Guest User:</strong> a generic user without a password, with volatile configuration data; in the next login, no previous session data will be accessible.") + "</li>" +
            "</ul>"
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: wifi_llx21
            source: "4.png"
            fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y

                   wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            textFormat: Text.RichText
            text:
                  qsTr("GVA WI-FI INTEGRATION")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 790)
            width: resize_x( parent, welcome_background, 3300) - x
            height: resize_y( parent, welcome_background, 2100) - y
            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
	    text:
	    "<p>"+
	    qsTr("LliureX Wi-Fi GVA Control makes it easier to use the Wi-Fi connections officially provided by the GVA for its educational centers, within the framework of the <strong>Connected Schools </strong>and <strong>WIFIES</strong> projects.")+
	    "</p><p>" +
            qsTr("It allows automatic connection to the corresponding Wi-Fi network (<strong>WIFI ALU</strong> for students and <strong>WIFI PROF</strong> for teachers) using the credentials entered on the login screen, as long as access is performed through the <strong>Digital Identity</strong> assigned to members of the educational community.") + 
            "</p>"
        }
    }


    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: digital_environment
            source: "5.png"
            fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
	    	x: resize_x( parent, welcome_background, 600) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#ffffff"
            font.family:"noto"
            font.pixelSize:24
            font.bold:true
            text: 
                  qsTr("Our goal is to create a digital environment that is: ")
           
        }

        Text {
	    	x: resize_x( parent, welcome_background, 420) 
		y: resize_y( parent, welcome_background, 1450)
            width: resize_x( parent, welcome_background, 1100) - x
            height: resize_y( parent, welcome_background, 1600) - y

            wrapMode:Text.WordWrap
            color: "#ffffff"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
	    horizontalAlignment: Text.AlignHCenter
            text:
	    qsTr("<strong>SUSTAINABLE</strong>")+
	    "<p>"+
	    qsTr("Promoting the responsible and efficient use of resources.")+
	    "</p>"
        }

        Text {
       	    	x: resize_x( parent, welcome_background, 1320) 
		y: resize_y( parent, welcome_background, 1450)
            width: resize_x( parent, welcome_background, 2100) - x
            height: resize_y( parent, welcome_background, 1600) - y

            wrapMode:Text.WordWrap
            color: "#ffffff"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
	    horizontalAlignment: Text.AlignHCenter
            text:
	    qsTr("<strong>ACCESSIBLE</strong>")+
	    "<p>" +
	    qsTr("Ensuring that everyone, regardless of their abilities, can access technology.") +
	    "</p>"
          }

        Text {
       	    	x: resize_x( parent, welcome_background, 2300) 
		y: resize_y( parent, welcome_background, 1450)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1600) - y

            wrapMode:Text.WordWrap
            color: "#ffffff"
            font.family:"noto"
            font.pixelSize:12
	    textFormat: Text.RichText
	    horizontalAlignment: Text.AlignHCenter
            text:
	    qsTr("<strong>INCLUSIVE</strong>") + 
	    "<p>" +
	    qsTr("Promoting equal opportunities for all users, without discrimination.") +
	    "</p>"
        }

    }


        Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: resources_installed
            source: "6.png"
            fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }

        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3300) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text:qsTr("LliureX includes a series of pre-installed educational applications for all educational levels, designed to promote the use of ICT in schools. For example: Gimp, VLC Media Player, Audacity, eXeLearning.")
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: alea_llx21
            source: "7.png"
            fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 650)
            width: resize_x( parent, welcome_background, 1000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            text: 
                  qsTr("Artificial Intelligence ")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 750)
            width: resize_x( parent, welcome_background, 2000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text:
            "<ul>"+
            "<li>" + qsTr("<strong>Speech Note:</strong> audio-to-text transcription, text-to-speech, translation, and subtitles")+ "</li>" +
            "<li>" + qsTr("<strong>AI Plugin for Krita:</strong> image generation, inpainting, outpainting, erasing, substitution, pose changes, and more.")+ "</li>" +
            "<li>" + qsTr("<strong>Upscayl:</strong> image upscaling with AI.")+ "</li>" +
            "<li>" + qsTr("<strong>Audacity AI:</strong> music generator, noise removal, and track separation.")+ "</li>" +
            "<li>" + qsTr("Several apps for working with <strong>LLM</strong>: Ollama, Alpaca, AnythingLLM, PyGPT.")+ "</li>" +
            "<li>" + qsTr("Several apps for working with voice: <strong>Nerd Dication</strong>, Google Text to Speech")+ "</li>" +
            "<li>" + qsTr("<strong>ExeLearning</strong> now includes a style that incorporates AI in a toolbar for translation, reading, and accessibility. ")+ "</li>" +
            "</ul>"
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: tactil_llx25
            source: "8.png"
            fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            text: 
                  qsTr("ADAPTATION TO TOUCH DEVICES")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 770)
            width: resize_x( parent, welcome_background, 3300) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
	    text:
	    "<p>" +
	    qsTr("LliureX Touch is the new option in LliureX that enables the activation of an on-screen virtual keyboard, similar to what can be found on any touch device.")+
	    "</p><p>" +
	    qsTr("The virtual keyboard (Onboard) is preconfigured to appear automatically when needed, although it can also be shown or hidden manually.") +
	    "</p>"
        }
    }

     Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: kde_neon
            source: "9.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 1000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            text: 
                  qsTr("Bassed on KDE Neon")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 770)
            width: resize_x( parent, welcome_background, 2000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
	    text:
	    "<p>" +
	    qsTr("LliureX develops all its potential based on KDE Neon.")+
	    "</p><p>"+
	    qsTr("In this way, we have a very solid base, like the one offered by Ubuntu LTS, and a modern desktop that is constantly updated.") +
	    "</p>"
           
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: epoptes_model
            source: "10.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }

        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3300) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text:
            qsTr("With <strong>Epoptes</strong>, the teacher can:")+
            "<ul>"+
            "<li>" + qsTr("Supervise the screens of the classroom computers in real time.")+ "</li>" +
            "<li>" + qsTr("Control the devices remotely, being able to turn on, off, restart, or lock the students' screens")+ "</li>" +
            "<li>" + qsTr("Send messages or notifications to the students.")+ "</li>" +
            "<li>" + qsTr("Execute commands on multiple computers simultaneously, making classroom management easier.")+ "</li>" +
            "<li>" + qsTr("Share the teacher's screen with students for live demonstrations. ")+ "</li>" +
            "</ul>"
        }
    }

     Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: store
            source: "11.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 1000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            text: 
                  qsTr("LliureX Store")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 790)
            width: resize_x( parent, welcome_background, 2000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text:
            qsTr("LliureX Store is the app store of the LliureX operating system. It allows users to search for, install, and update programs easily, with a visual interface designed for the educational environment. You can find applications from the Appsedu catalog.")
        }
    }

         Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: zero_center
            source: "12.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            text: 
                  qsTr("ZERO-CENTER")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 770)
            width: resize_x( parent, welcome_background, 3300) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text:
            qsTr("The <strong>Zero Center</strong> in LliureX is a tool that centralizes access to system configurations, installations, and specific utilities. It allows access to commands and configures the system to function correctly according to your needs.")
  
          }
    }

Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: bellscheduller
            source: "13.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 1000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            text: 
                  qsTr("Bell Scheduler")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 770)
            width: resize_x( parent, welcome_background, 2000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text:
            qsTr("An application designed to schedule alarms marking the start of classes, breaks, and departures... It plays the sound associated with each alarm. The application can be installed on any LliureX computer connected to the school's sound system.")
        }
    }

Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: ia
            source: "14.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }
        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            text: 
                  qsTr("Use AI for your language classes")
           
        }

        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 780)
            width: resize_x( parent, welcome_background, 3300) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text: qsTr("You can use <strong>Speech Note</strong> and <strong>Google Text To Speech</strong> to learn languages:")+
            "<ul>"+
            "<li>" + qsTr("Generate voice from text in English with different accents: American, British, Australian.") + "</li>" + 
            "<li>" + qsTr("Read in a different language and see if the AI can understand your sentences, then compare it to the correct intonation.") + "</li>" + 
            "<li>" + qsTr("Transcribe audios from different sources, even videos, to generate the text.") + "</li>" + 
            "<li>" + qsTr("Translate between different languages to check the correctness of your exercises.") + "</li>" + 
            "<li>" + qsTr("Generate subtitles in any language to help you with videos as <strong>listening</strong> exercises. ") + "</li>" + 
            "</ul>"
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: lumi_content
            source: "15.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }

        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 2000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:16
            font.bold:true
            text: 
                  qsTr("LUMI INTERACTIVE CONTENT WITH H5P")           
        }

        Text {
       		x: resize_x( parent, welcome_background, 100) 
		y: resize_y( parent, welcome_background, 770)
            width: resize_x( parent, welcome_background, 2000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
	    text:
	    "<p>" +
	    qsTr("You can create, edit, and view interactive educational materials (H5P packages) in your desktop environment.")+
	    "</p><p>" +
	    qsTr("Unlike other H5P systems, <strong>Lumi</strong> does not require Moodle, WordPress, or Drupal. You can simply create interactive content and share it with your students by exporting it as an HTML file and uploading it to <strong>Aules</strong>.") + 
	    "</p>"
        }
    }

    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: novedades05_llx21
            source: "16.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }

        Text {
       		x: resize_x( parent, welcome_background, 1400) 
		y: resize_y( parent, welcome_background, 670)
            width: resize_x( parent, welcome_background, 3300) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:12
            textFormat: Text.RichText
            text:
            qsTr("In <strong>LliureX 25</strong>, working with 3D printers will be easier for you. Install these design applications from the <strong>LliureX</strong> store:")+
            "<ul>" +
            "<li><strong>Slic3r</strong></li>" +
            "<li><strong>Ultimaker Cura</strong></li>" +
            "<li><strong>PrusaSlicer</strong></li>" +
            "</ul>"
        }
    }


    Slide {
        x:0
        y:0
        width:parent.width
        height:parent.height
	Rectangle{
		color:"#eff0f1"
		width: parent.width
		height: parent.height
	}

        Image {
            id: novedades2_llx21
            source: "17.png"
	    fillMode: Image.PreserveAspectFit
	    width: parent.width
	    height: parent.height

        }

        Text {
       		x: resize_x( parent, welcome_background, 400) 
		y: resize_y( parent, welcome_background, 370)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            color: "#023859"
            font.family:"noto"
            font.pixelSize:20
            font.bold:true
            text: 
                  qsTr("Need help with LliureX")           
        }

        Text {
       		x: resize_x( parent, welcome_background, 200) 
		y: resize_y( parent, welcome_background, 1470)
            width: resize_x( parent, welcome_background, 3000) - x
            height: resize_y( parent, welcome_background, 1100) - y

            wrapMode:Text.WordWrap
            color: "#023859"
            font.family:"noto"
            font.pixelSize:14
            textFormat: Text.RichText
	    text:
	    "<p>" + 
	    qsTr("We offer user support and maintenance for the current version, <strong>LliureX 25</strong>, as well as for the immediate previous version, <strong>LliureX 23</strong>. If you need technical support, open a ticket in <strong>gvaSAI</strong> by following this path:") +
	    "</p><p>" +
            qsTr(" Work team > New ticket about Work team > Request and/or Incident > <strong>LliureX</strong>.") +
	    "</p>"

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
