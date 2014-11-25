require 'rspec'
require 'page-object'
require 'faker'
require 'data_magic'
require 'require_all'

# Define location of page objects for require_all
# require_rel 'pages'

# Abstract common routes via require_all
# PageObject::PageFactory.routes = {
#   :default => [[SomePage, :some_action]],
# }

World(PageObject::PageFactory)
