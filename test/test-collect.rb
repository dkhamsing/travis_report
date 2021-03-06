require 'travis_report'

list = [
  'dkhamsing/awesome_bot',
  'dkhamsing/travis_report'
]

puts "Testing TravisReport::collect with #{list.count} repos"

c = []
TravisReport::collect list, 2, false, false do |r, t|
  puts "Getting Travis CI status for #{r}"
  c.push t
end

exit 1 if c.count != list.count
puts '✅'
