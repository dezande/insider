require 'faker'

# subject
subjects = (0..10)
  .map { |_| Faker::Game.unique.title }
  .map { |word|  { word: word } }
Subject.create(subjects)
