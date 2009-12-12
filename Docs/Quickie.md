Class: Quickie {#Quickie}
=========================

Creates and returns a QuickTime Element using supplied parameters. I followed the documentation provided in this article: [](http://support.apple.com/kb/TA26444?viewlocale=en_US). Due to behavior differences amongst browsers, Apple says the best way to embed a QuickTime movie is to use an &lt;embed&gt; element wrapped in an &lt;object&gt; element so that all browsers behave appropriately. Since we are using JavaScript, we can check which browser is in use and dish out the correct HTML code without the need for redundant object/embed elements.

### Implements:

Options


Quickie Method: constructor {#Quickie:constructor}
--------------------------------------------------

### Syntax: 

	var myQuickie = new Quickie(path[, options]);

### Arguments:

1. path - (*string*) Relative or absolute path to the QuickTime file.
2. options - (*object*) The options object.

### Options:

* id - (*string: defaults to 'Quickie_' + unique id*) Id for the Quickie object.
* height - (*integer: defaults to 1*) The height of the QuickTime movie.
* width - (*integer: defaults to 1*) The height of the QuickTime movie.
* container - (*element*) The element into which the Quickie object will be injected.
* attributes - (*object*) QuickTime attributes for the element. See [](http://www.apple.com/quicktime/tutorials/embed.html) for possible attributes.

### Returns:
		
* (*object*) This quickie instance.

### Example:

	var myQuickie = new Quickie('myMovie.mov', {
		id: 'myQuicktimeMovie',
		width: 640,
		height: 480,
		container: 'qtmovie',
		attributes: {
	  	controller: 'true',
	  	autoplay: 'false'
		}
	});

### Credits:
	
Based on the Swiff class provided by MooTools.
	
### License:
	
MIT-Style License



Quickie Method: toElement {#Quickie:toElement}
----------------------------------------------

Returns the Quickie embed/object element.

### Returns:

* (*element*) Browser appropriate QuickTime element.



Quickie Method: replaces {#Quickie:replaces}
--------------------------------------------

Replaces the passed DOM element with the Quickie object.

### Arguments:

1. element - (*element*) DOM Element to use.

### Returns:

* (*object*) This Quickie instance.



Quickie Method: inject {#Quickie:inject}
----------------------------------------

Injects the Quickie object into the passed element.

### Arguments:

1. element - (*element*) DOM Element to use.

### Returns:

* (*object*) This quickie instance.



Hash: Browser {#Browser}
========================

Quickie adds some properties to the Browser.Plugins hash.

### Plugins:

* Browser.Plugins.QuickTime - (*boolean*) True if the current browser can use the QuickTime plugin.