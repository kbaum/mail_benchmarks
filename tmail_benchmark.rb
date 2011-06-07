#!/usr/bin/env ruby

require "rubygems"
require "bundler"
Bundler.require
require 'benchmark'


sample_email = File.read('sample_body.eml')
b = Benchmark.measure do
  1000.times do
    m = TMail::Mail.parse(sample_email)
  end
end


puts b.inspect

