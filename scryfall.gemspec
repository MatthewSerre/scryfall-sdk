# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'scryfall-sdk'
  s.version     = '0.0.0'
  s.summary     = 'A Ruby gem for interacting with the Scryfall API'
  s.description = 'A means for Ruby developers to access Magic: The Gathering card data from Scryfall'
  s.authors     = ['Matthew Serre']
  s.email       = 'matthew.serre@gmail.com'
  s.files       = ['lib/scryfall.rb', 'lib/scryfall/api.rb', 'lib/scryfall/base.rb', 'lib/scryfall/cards.rb']
  s.homepage    =
    'https://github.com/MatthewSerre/scryfall-sdk'
  s.license = 'MIT'
end
