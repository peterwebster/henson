#!/bin/bash

#uses sed to change strings in Stage 7, in general reversing the abbreviations made in Stage 2, and generally amending and amplifying other parts of the markup.
# i.bak creates a backup of each file amended, with the extension .bak ( see https://stackoverflow.com/questions/5410757/delete-lines-in-a-text-file-that-containing-a-specific-string )

LC_CTYPE=en_GB.utf8

sed -i 's/id="/xml:id="/g'  *.xml
sed -i 's/="b sup u/="bold superscript underline/g' *.xml
sed -i 's/="b sup/="bold superscript/g'  *.xml
sed -i 's/="sup u/="superscript underline/g' *.xml
sed -i 's/="i b u/="italic bold underline/g' *.xml
sed -i 's/="b i u/="bold italic underline/g' *.xml
sed -i 's/="b u/="bold underline/g' *.xml
sed -i 's/="b du/="bold doubleunderline/g' *.xml
sed -i 's/="i u/="italic underline/g' *.xml
sed -i 's/="b i/="bold italic/g' *.xml
sed -i 's/="b"/="bold"/g' *.xml
sed -i 's/="sup"/="superscript"/g' *.xml
sed -i 's/="u"/="underline"/g' *.xml
sed -i 's/="du"/="doubleunderline"/g' *.xml
sed -i 's/="i"/="italic"/g' *.xml
sed -i 's/<event/<listEvent><event/g' *.xml
sed -i 's/<\/event>/<\/event><\/listEvent>/g' *.xml
sed -i 's/<text>/<teiHeader><fileDesc><titleStmt><title>An entry from the Journals of Hensley Henson<\/title><\/titleStmt><publicationStmt><distributor>Durham University<\/distributor><\/publicationStmt><sourceDesc><bibl>Edited from the manuscripts in the custody of Durham Cathedral Library.<\/bibl><\/sourceDesc><\/fileDesc><\/teiHeader><text>/g' *.xml
sed -i 's/eacute;/#x00E9;/g' *.xml 
sed -i 's/Eacute;/#x00C9;/g' *.xml 
sed -i 's/Egrave;/#x00C8;/g' *.xml 
sed -i 's/egrave;/#x00E8;/g' *.xml 
sed -i 's/agrave;/#x00E0;/g' *.xml 
sed -i 's/Agrave;/#x00C0;/g' *.xml 
sed -i 's/Acirc;/#x00C2;/g' *.xml 
sed -i 's/acirc;/#x00E2;/g' *.xml 
sed -i 's/Ecirc;/#x00CA;/g' *.xml 
sed -i 's/ecirc;/#x00EA;/g' *.xml 
sed -i 's/Ouml;/#x00D6;/g' *.xml 
sed -i 's/ouml;/#x00F6;/g' *.xml 
sed -i 's/auml;/#x00E4;/g' *.xml 
sed -i 's/Auml;/#x00C4;/g' *.xml 
sed -i 's/Uuml;/#x00DC;/g' *.xml 
sed -i 's/uuml;/#x00FC;/g' *.xml
sed -i 's/ocirc;/#x00F4;/g' *.xml
sed -i 's/Ocirc;/#x00D4;/g' *.xml
sed -i 's/aacute;/#x00E1;/g' *.xml 
sed -i 's/Aacute;/#x00C1;/g' *.xml 
sed -i 's/iacute;/#x00ED;/g' *.xml 
sed -i 's/Iacute;/#x00CD;/g' *.xml 
sed -i 's/igrave;/#x00EC;/g' *.xml 
sed -i 's/Igrave;/#x00CC;/g' *.xml
sed -i 's,<teiH,<TEI version="3.3.0" xmlns="http:\/\/www.tei-c.org\/n\s/1.0"><teiH,g' *.xml
sed -i 's,</text>,</text></TEI>,g' *.xml


