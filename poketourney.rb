# poketourney.rb
require 'sinatra'


get '/' do
  types =
    ["Bug", "Dark", "Dragon", "Electric", "Fairy", "Fighting", "Fire", "Flying", "Ghost", "Grass", "Ground", "Ice", "Normal", "Poison", "Psychic", "Rock", "Steel", "Water"].shuffle

  p1,p2 = [types[0...9], types[9..-1]]



  liquid :body, :locals => { :list1 => p1, :list2 => p2 }

end
