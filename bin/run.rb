require_relative '../config/environment.rb'
require_relative "./run1.rb"
require_relative "./run2.rb"
require "pry"

 $prompt = TTY::Prompt.new

ActiveRecord::Base.logger = nil
$a = Artii::Base.new :font => 'slant'





start_app
ship= $prompt.ask('What is your shipping address:')
    puts ship
p "Your order has been placed"
p "We appreciate your business! Come back soon!"