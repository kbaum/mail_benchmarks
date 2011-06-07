#!/usr/bin/env ruby
require "rubygems"
require "bundler"
require 'benchmark'
Bundler.require

sample_email = File.read('sample_body.eml')
b = Benchmark.measure do
  1000.times do
    m = Mail.new(sample_email)
  end
end


puts b.inspect

