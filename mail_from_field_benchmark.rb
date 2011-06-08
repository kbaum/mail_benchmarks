#!/usr/bin/env ruby
require "rubygems"
require "bundler"
Bundler.require

require './optimize_header_parse.rb'

profile_result = RubyProf.profile do
    1000.times do
      m = Mail::FromField.new("Chris Lowis <chris.lowis@gmail.com>", "UTF-8")
    end
end

puts "output rubyprof"
printer = RubyProf::GraphHtmlPrinter.new(profile_result)
printer.print(File.new('./docs/mail_from_field_graph.html', "w+"), :min_percent=>0)
