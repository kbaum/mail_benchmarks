#!/usr/bin/env ruby

require "rubygems"
require "bundler"
Bundler.require


sample_email = File.read('sample_body.eml')
profile_result = RubyProf.profile do
  1000.times do
    m = TMail::Mail.parse(sample_email)
  end
end

puts "output rubyprof"
printer = RubyProf::GraphHtmlPrinter.new(profile_result)
printer.print(File.new('./docs/tmail_graph.html', "w+"), :min_percent=>0)
