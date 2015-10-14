#codonizer
Codon-usage counter & table-generator written in poor ruby

#Warning
I'm new to this git stuff so bear with my mess...

#Dependencies
BioRuby (gem install bio)

A list of Open Reading Frames (ORFs) in fasta format. 
Get the transcriptome (Trinity, Bridger, TransAbySS, etc...), quantify abundance (RSEM, eXpress ...), filter by abundance and predict Open Reading Frames (ORFs). Double check that sequences start with start codon (ATG)...

#Usage
ruby codonizer.rb sequences_CDS.fasta

#Pending
Still need to figure out how to calculate codon ratios for each aminoacid...

#License
The MIT License (MIT) - Copyright (c) 2015 bpollakw
