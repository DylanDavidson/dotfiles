#!/usr/bin/env ruby
require 'irb'
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

if ENV['RAILS_ENV']
  require 'rubygems'
end

require 'hirb'
Hirb.enable

# Uncomment the following line if you want to remove SQL query output:
# ActiveRecord::Base.logger.level = 1 if defined? ActiveRecord::Base

def y(obj)
  puts obj.to_yaml
end

class Object
  def subl(method_name)
    file, line = method(method_name).source_location
    `subl '#{file}:#{line}'`
  end
end
