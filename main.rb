# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

# find(5)

# pp @candidates

# @candidates.each {|candidate| puts experienced?(candidate)}
qualified_candidates(@candidates)

# @candidates.each {|candidate| puts ruby_or_python?(candidate)}