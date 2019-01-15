class River
  attr_reader :name
  attr_accessor :fish_population

  def initialize(name, fish_population)
    @name = name
    @fish_population = fish_population
  end

  def lose_a_fish()
    @fish_population.pop
  end

  def fish_count
    return @fish_population.count
  end
end
