This worksheet, and all related files, are released CC-BY. 

# Close Reading with TEI #

This workshop will explore a historical text and help you create a digital record of your analysis

### Vetting a Website ###

Visit the Recovered Histories Website at http://www.recoveredhistories.org

Examine the site's layout and read its introduction  
+ What makes you believe this site is a trustworthy provider of historical texts?
+ What makes you believe this site is NOT a trustworthy provider of historical texts? 
 
### Finding a Source ###

Visit the site's collections via the 'Browse' function

Locate the pamphlet *Negro Slavery* by Zachary Macaulay and open it

This is an abolitionist pamphlet regarding the Atlantic slave trade, presenting and examine evidence of how it is run.  When you approach a primary source like this, it is tempting to read through it from beginning to end, to get an overview of its contents, and then 'mine' or 'cherry-pick' good quotations to include in your assessments.  However, we are going to focus on examine a very small part of the text in a very high level of detail.  Each of you will be working on one page of text, becoming the 'class expert' on it and its contents.

### Setting Up Your Workspace ###

Without closing the browser containing the pamphlet, open a new browser window (not a new tab) and open our shared Google Drive.
 
In this folder, you will find a folder entitled 'MacAulay Pamphlet'

Inside the folder you will find a long list of documents, each labelled by a number. These are *mostly* blank documents, one for each page of the pamphlet.
  
Your tutor will now assign you a page number. If you are undertaking this project outside of seminar (owing to illness) ask your tutor for a page number via email.

Tick the box next to the two following files:
* 000style.xsl
* (your page number).xml

Download (right-click and select download) both files. If asked for the format you would like, choose "As Is".

Once downloaded, drag and drop (or extract) the two files from the zip folder onto your desktop. Open the .xml (page number) file. It should open with Notepad. If not, open Notepad and then drag the .xml icon into Notepad to open it there.

Dock your page number document to one side of your screen.

**Note:** You can do this by dragging the browser to the edge of your screen until it *snaps* into place, or by pressing Cntl+Windows Key+Right Arrow Key.

In your other browser window, go to your page of the pamphlet (**using the original page numbers in the pamphlet, not the number web interface**) and dock this window to the other side of you screen.  You may need to zoom in or out to get your page to a size that you can read comfortably.

If you look at your *blank* document you'll see a little bit of computer code (XML) at the top and bottom of your page.  **This is important, so please do not delete it.**  

The last lines will be 
<code>&lt;/body&gt;&lt;/text&gt;&lt;/TEI&gt;&lt;/teiCorpus&gt;</code>. Everything you write today should be just above <code>&lt;/body&gt;</code>.

### Transcribing Your Page ###

The first thing you will need is go to the tag 

<code>&lt;biblScope&gt;1&lt;/biblScope&gt;</code>

and replace the number one (1) with the page number you are transcribing.

Next, you will need to *very carefully* transcribe your page of text from the image into your document.  Make sure you do not make any changes to the text, even if you think they author has used poor grammar or misspelled a word.  

**The only exception is if a word is hyphenated because it is split at a line break. In this case, you can just type the word as normal, without the hyphen.**

Remember, you are using Notepad, and will therefore not have a spell check function, so be very, very careful in your typing. If your page begins or ends mid-sentence, that is fine. Simply begin and end where the page does.

**Once you have completed your transcription, look away from your computer for 30-45 seconds. Staring into the distance every 10-20 minutes will keep your eyes from straining. Also, shake out your hands at the wrists, to prevent repetitive stress injuries to your fingers**.

You are now going to \*encode\* or \*mark-up\* your text.

You do not need to worry about line breaks but should start every new paragraph (or heading) with a <code>&lt;p&gt;</code> and end every paragraph (or heading) with a <code>&lt;/p&gt;</code>.

Once you have completed your transcription, look away from your computer for 30-45 seconds.  Staring into the distance every 10-20 minutes will keep your eyes from straining.  Also, shake out your hands at the wrists, to prevent repetitive stress injuries to your fingers.  

### Encoding Your Transcription ###

You are now going to *encode* or *mark-up* your text.  

At the start of your transcription, and at the start every new paragraph (or heading), place a \<p\>. This explains to the computer that a new paragraph has begun. At the end every paragraph (or heading), place a \</p\>. 

Re-read your page and highlight / colour the following things:

+ Any persons mentioned (including any he/she if they refer to a specific person)
+ Any places mentioned
+ Any claims, assertions or arguments made  

Now that you have highlighted these, you are going to put proper code around them.

**For persons**, *surround* your original text with these

<code>&lt;persName key="Last, First" from="YYYY" to="YYYY" role="Occupation" ref="http://www.website.com/webpage.html"&gt; &lt;/persName&gt;</code>

+ Inside the speech marks for **key**, include the real full name of the person mentioned  
+ In **from** and **to**, include their birth and death years, using ???? for unknown years  
+ In **role**, put the occupation, role or 'claim to fame' for this individual  
+ In **ref**, put the URL (link) to the Dictionary of National Biography or academic journal website where you found this information. 

*If there is a `&` in your link, you will need to replace this with `&amp;amp;`*

**For places**, *surround* your original text with these

<code>&lt;placeName key="Sheffield, United Kingdom" ref="http://tools.wmflabs.org/geohack/geohack.php?pagename=Sheffield&params=53_23_01_N_1_28_01_W_type:city_region:GB"&gt; &lt;/placeName&gt;</code>

+ In **key**, put the city and country with best information you can find for the modern names for this location
+ In **ref**, put a link to the relevant coordinates on Wikipedia GeoHack website 

**To obtain this, go to the Wikipedia page for this city and click on the latitude/longitude coordinates for the location. For large areas, such as entire countries or continents, just use the Wikipedia page URL.**

**For claims or arguments**, *surround* your text (the entire statement being
made by the author) with these

<code>&lt;interp key="reason" n="citation" cert="high" ref="http://www.website.com/webpage.html"&gt; &lt;/interp&gt;</code>

+ In **key**, explain why you believe this claim is true or not, using secondary evidence
+ In **n**, put a full citation (as you would in an essay) to the relevant *secondary* source. You won't be able to italicise the text, but this is fine.
+ In **cert** (short for certainty), put: high, medium, low or unknown, depending on how much you trust the secondary source you have used
+ In **ref**, put the link to the website where you got the information to assess this claim. If you are doing it based on lecture material, write "http://www.shu.ac.uk", but know that lecture material is a very weak source and should be avoided wherever possible

When you are happy with your work, hit (cntl+s) to save your work

### Viewing Your Encoded Text ###

Once you have saved your file, close the document. Open either Internet Explorer or Firefox. The following will not work in Chrome because it has different security settings.

Making sure both your (page number).xml file and your 000style.xsl file are in the same folder (or both on your desktop), drag the icon for **(page number).xml** into your Internet Explorer Browser window.

If you now see a colour-coded version of your text, Congratulations! If you hover over the coloured sections, you should see a pop-up with the additional information you entered.

If your text comes up only in black, with no paragraph divisions or headings, or doesn't come up at all, something has gone wrong. Re-open your .xml file and check that you have:

* Placed `<p>` at the start of every paragraph, including the start of the page

* Placed `</p>` at the end of every paragraph, including the end of the page

* Made sure all your `<persName>`, `<placeName>` and `<interp>` tags are properly enclosed in `<>`s

* Made sure you have both an open `<>` and close `<\>` tag for each tag you use

* Made sure you attribute values are fully enclosed in `""`s

* Made sure you have a space between the `"` of one attribute and the start of the next

* Made sure you do NOT have a space after the `=` of an attribute

If your text still does not appear formatted, you may need to remove the text one paragraph at a time, refreshing your browser window, until it appears. This will help you identify which paragraph (or sentence) has the error within it).

Once you have you a full formatted file, congratulations! If you choose to post your work online, please do place a link to the site below and receive proper acolades your hard work!
