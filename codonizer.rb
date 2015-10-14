#!/usr/bin/env ruby

require 'rubygems'
require 'bio'

file = Bio::FastaFormat.open(ARGV.shift)

# Initialise hash
counts = Hash.new 0

# Slice by codon (we need an ORF so that we are in frame)
def slicer(str)
  var = str.slice!(0..2)
  return var
end

# Starting parsing sequences
file.each do |sequence|
  codons = Array.new 0
  seq = sequence.seq

# Figure out how long is the predicted sequence
  aminoacids = sequence.length / 3

# For each aminoacid we count figure out the codon its coded by
  aminoacids.times do
    codons.push(slicer(seq))
  end

# Count codons
  codons.each do |codons|
    counts[codons] +=1
  end
end

# Produce table, currently using eukaryote table
table = Bio::CodonTable[1]
  table.each do |codon, aa|

# Print table, still need to work out the generation codon usage percentage
$stdout.puts "#{codon.swapcase} , #{counts[codon.swapcase]} , #{aa}"
end
#$stdout.puts counts


# puts sequence.entry_id+"\n"+sequence.seq
# do something on each fasta sequence entry
