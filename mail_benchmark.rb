require "rubygems"
require "bundler"
Bundler.setup

require 'mail'
require 'benchmark'


sample_email = File.read('sample_body.eml')
b = Benchmark.measure do
  1000.times do
    m = Mail.new(sample_email)
  end
end


puts b.inspect

