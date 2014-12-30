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

Without closing the browser containing the pamphlet, open a new browser window (not a new tab) and open your seminar group's folder on Google Drive.
 
In this folder, you will find a folder entitled 'MacAulay Pamphlet'

Inside the folder you will find a long list of documents, each labelled by a number. These are *mostly* blank documents, one for each page of the pamphlet.
  
Your tutor will now assign you a page number. If you are undertaking this project outside of seminar (owing to illness) ask your tutor for a page number via email.

Open the document with your page number and dock your blank document to one side of your screen.

**Note:** You can do this by dragging the browser to the edge of your screen until it *snaps* into place, or by pressing Cntl+Windows Key+Right Arrow Key.

In your other browser window, go to your page of the pamphlet (using the original page numbers in the pamphlet, not the number web interface) and dock this window to the other side of you screen.  You may need to zoom in or out to get your page to a size that you can read comfortably.

If you look at your *blank* document you'll see a little bit of computer code (XML) at the top and bottom of your page.  **This is important, so please do not delete it.**  

The last lines will be 
<code>&lt;/body&gt;&lt;/text&gt;&lt;/TEI&gt;&lt;/teiCorpus&gt;</code>. Everything you write today should be just above <code>&lt;/body&gt;</code>.

### Transcribing Your Page ###

The first thing you will need is go to the tag 

<code>&lt;biblScope&gt;1&lt;/biblScope&gt;</code>

and replace the number one (1) with the page number you are transcribing.

Next, you will need to *very carefully* transcribe your page of text from the image into your document.  Make sure you do not make any changes to the text, even if you think they author has used poor grammar or misspelled a word.  You do not need to worry about line breaks but should start every new paragraph (or heading) with a <code>&lt;p&gt;</code> and end every paragraph (or heading) with a <code>&lt;/p&gt;</code>.

Once you have completed your transcription, look away from your computer for 30-45 seconds.  Staring into the distance every 10-20 minutes will keep your eyes from straining.  Also, shake out your hands at the wrists, to prevent repetitive stress injuries to your fingers.  

### Encoding Your Transcription ###

You are now going to *encode* or *mark-up* your text.  

Re-read your page and highlight / colour the following things:

+ Any persons mentioned (including any he/she if they refer to a specific person)
+ Any places mentioned
+ Any claims, assertions or arguments made
Now that you have highlighted these, you are going to put proper code around them.

For persons, surround your text with these

<code>&lt;persname key="Last, First" from="YYYY" to="YYYY" role="Occupation" ref="http://www.website.com/webpage.html"&gt; &lt;/person&gt;</code>

+ Inside the speech marks for **key**, include the real full name of the person mentioned 
+ In **from** and **to**, include their birth and death years, using ? for unknown years
+ In **role**, put the occupation, role or 'claim to fame' for this individual.  
+ In **rep**, put the URL (link) to the Dictionary of National Biography, Wikipedia or other biography website where you found this information. If there is a & in your link, you will need to replace this with &amp;amp;

 
For places, surround your text with these

<code>&lt;place key="Sheffield, United Kingdom" ref="http://tools.wmflabs.org/geohack/geohack.php?pagename=Sheffield&params=53_23_01_N_1_28_01_W_type:city_region:GB""&gt; &lt;/place&gt;</code>

+ In **key**, put the city and country with best information you can find for the modern names for this location
+ In **ref**, put a link to the relevant coordinates on Wikipedia GeoHack website (http://tools.wmflabs.org/geohack/)

For claims or arguments, surround your text with these

<code>&lt;interp key="reason" n="citation" cert="high" ref="http://www.website.com/webpage.html"&gt; &lt;/interp&gt;</code>

+ In **key**, explain why you believe this claim is true or not
+ In **n**, put a full citation to the relevant source
+ In **cert** (short for certainty), put: high, medium, low or unknown
+ In **ref**, put the link to the website where you got the information to assess this claim. If you are doing it based on lecture material, write "_blank", but know that lecture material is a very weak source and should be avoided wherever possible

When you are happy with your work, hit (cntl+s) and call over your tutor, who will check your work.

### Viewing Your Encoded Text ###

Once your tutor has checked your work, return to the list of documents in the 'MacAulay Pamphlet' folder. Download the top file (000style.xsl) and your transcription file onto your desktop.

**Note: **To download from Google Drive, hit the check box next to each file and then the down arrow icon on the top of the list. Make sure you save them as text documents (not Word documents) and save them to your desktop!

Your transcription should be called something similar to 123.txt

+ Rename your file 123.xml
+ Open (drag) your 123.xml file into your browser

If you now see a colour-coded version of your text, Congratulations!  

If you hover over the coloured sections, you should see a pop-up with the additional information you entered.  This (along with your classmates' work) can serve as a reference for future discussions on the slave trade.
