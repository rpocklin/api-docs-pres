# require File.expand_path("../../config/environment", __FILE__)
require 'rspec'
require 'json_spec'
require 'rspec_api_documentation/dsl'

RSpec.configure do |config|
  config.include JsonSpec::Helpers
end

RspecApiDocumentation.configure do |config|
  config.format = [:json, :slate]

  config.post_body_formatter = :json
  config.curl_headers_to_filter = ['Cookie', 'Host']
  config.request_headers_to_include = ['Content-Type']
  config.response_headers_to_include = ['Content-Type']

  config.curl_host = 'https://www.google.com'
  config.api_name = "Like a Boss API"
  config.io_docs_protocol = "https"
end

