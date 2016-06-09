require 'rubygems'
require 'pry-stack_explorer'
require 'treetop'
# require_relative 'sonar_grammar'
Treetop.load 'sonar_grammar'

parser = SonarGrammarParser.new
test_cases = [
    ['friend:true AND dolphin:not', true],
    ['7=7', false],
    ['6 = 7', false],
    ['godzilla', false]
]

test_cases.each do |test_case|
  puts "#{test_case[0]} is #{parser.parse(test_case[0])}, " \
       "expected #{test_case[1]}"
end
