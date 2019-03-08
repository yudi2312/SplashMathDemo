require 'watir'
require 'cucumber'
require 'page-object'
require 'rspec/expectations'
require 'fig_newton'

require_relative 'helper/form_fill'

World(PageObject::PageFactory)
World(FormHelper)