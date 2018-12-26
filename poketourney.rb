# poketourney.rb
require 'sinatra'


get '/' do
  today = Date.today
  seed = today.to_time.to_i
  rando = Random.new(seed)
  types =
    ["Bug", "Dark", "Dragon", "Electric", "Fairy", "Fighting", "Fire", "Flying", "Ghost", "Grass", "Ground", "Ice", "Normal", "Poison", "Psychic", "Rock", "Steel", "Water"].shuffle(random: rando)

  p1,p2 = [types[0...9], types[9..-1]]



  liquid :body, :locals => { :now => today, :seed => seed, :list1 => p1, :list2 => p2 }

end
