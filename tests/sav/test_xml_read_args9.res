<?xml version="1.0"?><!DOCTYPE student [
	<!ELEMENT student (#PCDATA)>
	<!ATTLIST student first CDATA #REQUIRED
			  last  CDATA #IMPLIED>
]><!-- testing chardata with a string of sample legal char except '<' and '&' nor does it contain sequence "]]>" ---><student first="Snow" last="Man">This is a test</student>
