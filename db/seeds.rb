rng = RandomNameGenerator.new
50.times do |i|
  name = rng.compose(3)
  User.create(name: name)
end
