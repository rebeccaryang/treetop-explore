require 'treetop'
require_relative 'grammar'
Treetop.load 'grammar'

parser = GrammarParser.new
test_cases = [
  ['', false],
  ['7=7', true],
  ['6 = 7', false],
  ['7 = 7', true]
]

test_cases.each do |test_case|
  puts "#{test_case[0]} is #{parser.parse(test_case[0]).eval}, " \
       "expected #{test_case[1]}"
end

# r = parser.parse('6=7')
# binding.pry
