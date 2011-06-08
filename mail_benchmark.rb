#!/usr/bin/env ruby
require "rubygems"
require "bundler"
Bundler.require

require './optimize_header_parse.rb'

sample_email = File.read('sample_body.eml')
profile_result = RubyProf.profile do
    1000.times do
      m = Mail.new(sample_email)
    end
end

puts "output rubyprof"
#printer = RubyProf::GraphHtmlPrinter.new(profile_result)
printer = RubyProf::GraphPrinter.new(profile_result)
printer.print(File.new('./docs/mail_graph.txt', "w+"), :min_percent=>0)
