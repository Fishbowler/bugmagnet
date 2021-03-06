#Bug Magnet

Exploratory testing assistant for Chrome and Firefox. Adds common problematic values and
edge cases to the context menu (right-click) for editable elements, so you can
keep them handy and access them easily during exploratory testing sessions.

##Features

* Convenient access to common boundaries and edge cases for exploratory testing
* Extend it with your own config files easily
* Works on input fields, text areas, content editable DIVs
* Works on multi-frame pages, but only if they are from the same domain
* Only works in Chrome and Firefox
* Tiny overhead per page (<1k), no 3rd party library dependencies, completely passive, so it does not interfere with your web app execution in any way

##Usage

The easiest way to install the extension is from the 
[Chrome Web store](https://chrome.google.com/webstore/detail/efhedldbjahpgjcneebmbolkalbhckfi)
or [Addons for Firefox](https://addons.mozilla.org/en-US/firefox/addon/bugmagnet). After
installation, just right-click on any editable item on the page and you'll see a
Bug Magnet submenu. Click an item there, and it will be inserted into the
editable field. 

Alternatively, you can load the extension from the  [source files on a local disk](#running-from-a-local-setup).

##Customising

The easiest way to customise BugMagnet is to add your own config files to it.
Just click on the Configure BugMagnet option in the context menu, then select
additional files to load. Some example files can be found in the
[extras](extras/) folder.

The configuration format is very simple:

* a hash object property is a sub-menu
* a String property is a menu item. The property name is used as a menu item label 
  and the value is inserted into the text field on click.
* an Array property is a sub-menu, allowing you to quickly add a list of Strings
  without a special label (the element values are used both as menu labels and
  as text to insert).

Alternatively, if you'd like to distribute a different configuration to a larger
group without people individually having to load items, add your own values to the main config file
[config.json](template/common/config.json) and rebuild the tension (see
section [Running from a local setup](#running-from-a-local-setup)) below.

##Questions, suggestions

* Twitter: [@gojkoadzic](http://twitter.com/gojkoadzic) (Original Concept; Chrome Extension)
* Twitter: [@bbbco](http://twitter.com/bbbco) (Firefox Addon)

##Resources for more info

* [E-mail address test cases](http://blogs.msdn.com/b/testing123/archive/2009/02/05/email-address-test-cases.aspx)
  * [Dot atoms in e-mail](http://serverfault.com/questions/395766/are-two-periods-allowed-in-the-local-part-of-an-email-address)
  * [Interactive RFC e-mail validation](http://isemail.info/)
* [Falsehoods Programmers Believe About Names](http://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/)
  * [We have an employee whose last name is Null](http://stackoverflow.com/questions/4456438/how-can-i-pass-the-string-null-through-wsdl-soap-from-actionscript-3-to-a-co)
  * [Animal rights activist changes name to GoVeg.com](http://usatoday30.usatoday.com/tech/webguide/internetlife/2003-08-01-goveg_x.htm)
  * [Longest English surname on record](http://en.wikipedia.org/wiki/Leone_Sextus_Tollemache)
  * [Creative usernames and Spotify account hijacking](https://labs.spotify.com/2013/06/18/creative-usernames/)
  * [Personal names around the world by W3C](http://www.w3.org/International/questions/qa-personal-names)
* [Elisabeth Hendrickson's test heuristics cheat sheet](http://testobsessed.com/wp-content/uploads/2011/04/testheuristicscheatsheetv1.pdf)
* [Skype crashes — and won't stop crashing — if you send it this message](http://www.theverge.com/2015/6/3/8717951/skype-crash-http-error)
* [Troy Hunt - How I got XSS’d by my ad network](http://www.troyhunt.com/2015/07/how-i-got-xssd-by-my-ad-network.html)


##Contributing and extending code


###Setting up the development environment

Install node js and grunt CLI if not already installed. See
[gruntjs.com](http://gruntjs.com/getting-started) for more information.

Install project dependencies using

    npm install 

###Chrome Extension

####Running from a local setup

Run the following grunt command to copy and assemble the extension

    grunt package-chrome

Then load the **pack/chrome** folder in Chrome as an [unpacked extension](https://developer.chrome.com/extensions/getstarted#unpacked).

###Running tests

Run tests from the command line using

    grunt test-chrome

### Firefox Add-on

####Running from a local setup

Run the following grunt command to copy and assemble the add-on

    grunt package-firefox

Then drag the \*.xpi file created inside the **pack/firefox directory to your Firefox window to install the addon extension.

###Running tests

Run tests from the command line using

    grunt test-firefox

----

##Icon credit

Magnet icon from [Woothemes Ultimate Icon Set by Nishan Sothilingam](http://iconfindr.com/1vSsaKB)
