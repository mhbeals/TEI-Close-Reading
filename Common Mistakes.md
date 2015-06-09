## COMMON MISTAKES IN XML TEXT ENCODING ##

Below are common mistakes that many students make when text encoding for the first time.  If your text does not display properly (coloured, paragraph breaks) when you view it in a web browser, you should go back to your file and double-check you have not made any of the following typographical errors.

Remember, while a human reader will generally be able to guess 'what you meant', a computer can only read the literal text you have given it, and cannot account for typographical errors; you must therefore be incredibly careful when typing.
If you have particular difficulties with typography (such as dyslexia or vision impairment), you should feel free to contact me or your tutor at any time to assist you with spotting errors

### TAGS / ELEMENTS ###

A tag or element is a piece of XML code that tells the computer that you are encoding (or defining) something.  You are telling it that this bit of text is a person, place or claim.  All tags must be opened `<tag>` and closed `</tag>` properly and all opening and closing tags should be spelled and capitalised identically. They should also fully surround the text they are describing rather than appear bunched before or after it. Common mistakes include:

* Not surrounding the tag with `<>`s; that is, having  

`<persName`   
or   
`persName>`  
rather than  
`<persName>`

* Not using both an opening `<tag>` and closing `</tag>` element

* Not properly capitalising the tag; for example, using  
 
`<Persname>`   
instead of  
`<persName>`

* Having different opening and closing tags; for example:  
`<placeName></place>`  
instead of  
`<placeName>``</placeName>`

* Not beginning your text with a `<p>` paragraph tag or closing it with a `</p>` paragraph tag; for the purposes of this exercise, this is true even when a page does not begin or end with the start or end of a paragraph

* Not surrounding or including the original text; that is:  
`<persName></persName>`Melodee     
rather than   
`<persName>`Melodee`</persname>`  

### ATTRIBUTES ###
An attribute provides additional information about the text you are encoding.  For example, in a `<persName>` tag, you have the attributes key, from, to, role, and ref to give the computer details about that person's life.  Each attribute must be followed by a `=` and then its value.  

The value is the information the attribute is providing.  For example, the attribute key may have the value `"Beals, Melodee"`.  Attributes need to be both well formed (connected to itself) and separated from other attributes (by a space).  Common mistakes include:  

* Not surrounding the value with " "s; that is, having   

`"text`   
or   
`text"`  
instead of  
`"text"`

This is true even if you are leaving a value blank:  
 
`ref=""`  
not  
`ref=`   
or  
`ref="`

* Using curly `“ ”s` rather than straight `" "` speech marks. You can avoid this by (only) using Notepad rather than Google Docs or Word

* Including additional spaces within the attribute; that is, having  

`key = "text"`  
rather than  
`key="text"`

* Not including spaces between attributes; that is, having  

`key="Beals, Melodee"from="1982"`   
 rather than  
`key="Beals, Melodee" from="1982"`  

### AMPERSANDS (&) ###

In XML, ampersands (&) have a special meaning. Therefore, whenever you include an & ANYWHERE IN THE FILE you must write &amp; instead. Common mistakes include 

* Writing `&` instead of `&amp;`  
* Writing `&amp:` with a colon (`:`) instead of `&amp;` with a semi-colon (`;`)  
