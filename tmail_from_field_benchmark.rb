#!/usr/bin/env ruby
require "rubygems"
require "bundler"
Bundler.require

profile_result = RubyProf.profile do
    1000.times do
       TMail::Address.parse('Mikel Lindsaar <mikel@lindsaar.net>')
    end
end

puts "output rubyprof"
#printer = RubyProf::GraphHtmlPrinter.new(profile_result)
printer = RubyProf::GraphPrinter.new(profile_result)
printer.print(File.new('./docs/tmail_from_field_graph.txt', "w+"), :min_percent=>0)
