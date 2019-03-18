require 'watir'
require 'cucumber'
require 'page-object'
require 'rspec/expectations'
require 'fig_newton'
require 'report_builder'


require_relative 'helper/form_fill'

World(PageObject::PageFactory)
World(FormHelper)

ENV['BROWSER'] = 'CHROME'