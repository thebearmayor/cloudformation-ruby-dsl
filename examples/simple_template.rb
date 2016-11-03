#!/usr/bin/env ruby
require 'bundler/setup'
require 'cloudformation-ruby-dsl/cfntemplate'

tmpl = template do
  @stack_name = "hello-bucket-example"
  resource "HelloBucket", :Type => "AWS::S3::Bucket"
end

tmpl.exec!
