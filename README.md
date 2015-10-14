#codonizer
Codon-usage counter & table-generator written in poor ruby

#Warning
I'm new to this git stuff so bear with my mess...

#Dependencies
BioRuby (gem install bio)

A list of Open Reading Frames (ORFs) in fasta format. 
Get the transcriptome, quantify abundance (RSEM, eXpress ...), predict Open Reading Frames (ORFs) and then filter by abundance.

#Usage
ruby codonizer.rb sequences_CDS.fasta

#Pending
Still need to figure out how to calculate codon ratios for each aminoacid...
