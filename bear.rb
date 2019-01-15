class Bear
  attr_reader :name, :type
  attr_accessor :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_a_fish(river)
    @stomach.push(river.fish_population[-1])
  end

  def roar
    return "Roar!"
  end

  def food_count
    return @stomach.count
  end

end
