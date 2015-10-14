#!/usr/bin/env ruby

#file = File.open(ARGV[0])
#sequences = open (file)
#!/usr/bin/env ruby
require 'rubygems'
require 'bio'

file = Bio::FastaFormat.open(ARGV.shift)

counts = Hash.new 0

def slicer(str)
  var = str.slice!(0..2)
  return var
end

file.each do |sequence|
  codons = Array.new 0
  seq = sequence.seq
  aminoacids = sequence.length / 3

  aminoacids.times do
    codons.push(slicer(seq))
  end

  codons.each do |codons|
    counts[codons] +=1
  end
end

table = Bio::CodonTable[1]
  table.each do |codon, aa|
$stdout.puts "#{codon.swapcase} , #{counts[codon.swapcase]} , #{aa}"
end
#$stdout.puts counts




#  puts sequence.entry_id+"\n"+sequence.seq
# do something on each fasta sequence entry
