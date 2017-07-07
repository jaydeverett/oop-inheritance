require "pry"

class System

  attr_reader :bodies

  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    total = 0
    @bodies.each do |body|
      total = total + body.mass
    end
      return total
  end
end

class Body

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def mass
    return @mass
  end

end


class Planet < Body

  def initialize(day, year, name, mass)
    super(name, mass)
    @day  = day
    @year = year
  end

end


class Star < Body

  def initialize(type, name, mass)
    super(name, mass)
    @type = type
  end

end


class Moon < Body

  def initialize(month, planet, name, mass)
    super(name, mass)
    @month  = 30
    @planet = planet
  end

end

earth = Planet.new(24, 365, "Earth", 100)
sun = Star.new("G-type", "Sun", 1000)
moon = Moon.new(30, earth, "moon", 10)
milkyway = System.new

milkyway.add(earth)
milkyway.add(sun)
milkyway.add(moon)


puts moon.mass
puts milkyway.total_mass
