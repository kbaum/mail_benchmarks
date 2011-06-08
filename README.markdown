Benchmarks comparing mail and tmail when parsing an email
================

To Run
--------

    git clone git://github.com/kbaum/mail_benchmarks.git && rvm gemset create mail_benchmarks && cd mail_benchmarks && gem install bundler && bundle install
    bundle exec ./mail_benchmark.rb
    bundle exec ./tmail_benchmark.rb
    bundle exec ./mail_from_field_benchmark.rb
    bundle exec ./tmail_from_field_benchmark.rb 

The above outputs plain text ruby-prof GraphPrinter text files to the docs directory.  
