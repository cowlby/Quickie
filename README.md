Quickie
=======

Quickie is a small MooTools class to embed QuickTime objects into your website. It is based on the Swiff class provided by MooTools so if you’re familiar with that class, you’ll find yourself at home with this one.

!(Screenshot)[http://pradador.com/images/mootools/quickie.screenshot.jpg]

Features
--------

* Written in MooTools. Requires version 1.2.1+
* Automatically inserts browser-appropriate code for the QuickTime movie.
* Allows you to listen for the DOM events QuickTime fires using familiar MooTools event listeners.

How to Use
----------

Download and extract Quickie, then copy the Quickie.js file into a web-accessible directory of your choice. There is a YUI compressed version in the Compressed folder for your convenience.

Link to the Quickie.js file in the head section of your document after the MooTools link. The example below assumes you extracted the files to a folder called “js”.

	#HTML
	<head> 
	...
	<script type="text/javascript" src="js/mootools.core.js"></script> 
	<script type="text/javascript" src="js/Quickie.yui.js"></script> 
	...
	</head>

Add the following IE conditional code to the head section of your document. This object is necessary for IE to fire the QuickTime DOM events as detailed in the [JavaScript Scripting Guide for QuickTime](http://developer.apple.com/mac/library/documentation/QuickTime/Conceptual/QTScripting_JavaScript/aQTScripting_Javascro_AIntro/Introduction%20to%20JavaScript%20QT.html).

	#HTML
	<head> 
	...
	<!--[if IE]>
	<object id="qt_event_source" classid="clsid:CB927D12-4FF7-4a9e-A169-56E4B8A75598" codebase="http://www.apple.com/qtactivex/qtplugin.cab#version=7,2,1,0"></object>
	<![endif]--> 
	...
	</head>

Finally, use the following JavaScript code example inside of a 'domready' or 'onLoad' function to create the Quickie object.

	#JS
	var myQuickie = new Quickie('myMovie.mov', { 
	  id: 'myQuicktimeMovie', 
	  width: 640, 
	  height: 480, 
	  container: 'qtmovie', 
	  attributes: { 
	    controller: 'true', 
	    autoplay: 'false' 
	  }, 
	  onPlay: function() { alert('Playing'); }, 
	  onPause: function() { alert('Pausing'); } 
	});

Options
-------

* id – (string, defaults to Quickie_uniqueid) Id for the element which will be used to reference the QuickTime movie.
* width – (integer, defaults to 1) Width of the movie in pixels.
* height – (integer, defaults to 1) Height of the movie in pixels.
* container – (element) ID of the element where the QuickTime movie will be inserted. Note anything inside the container will be wiped out.
* attributes – (object) Key/Value pairs of any of the attributes a QuickTime movie can receive. There are two defaults, controller is set to true and postdomevents is set to true.

Events
------

Quickie can attach listeners to any of the QuickTime DOM Events. To add an event, simply add another property in the options object which begins with ‘on’ followed by the name of the event you want to listen for with the first letter capitalized. No need to use the ‘qt_’ prefix. For example, to listen for the play event, you would add this to the options object:
	
	#JS
	onPlay: function() { alert('qt_play fired'); }

Known Issues
------------

IE is very picky with QuickTime events so there are some circumstances where it behaves wonkily, particularly with initialization events. I’m working on taming IE, but at the very least the major events (play, pause, etc) behave reliably.

Compatibility
-------------

So far, I’ve only been able to test Quickie in the following browsers. Should work in others, will list them here pending confirmation.

Safari 4
Internet Explorer 7
Firefox 3

License
-------

Quickie is licensed under the MIT License. Use it, modify it, have fun with it… in any circumstance.