class Animal
	LEGS = 4
	def legs_in_animal
	  LEGS
	end
end

class Reptile < Animal
	def legs_in_reptile
	  LEGS
	end
end

class MyAnimals
	LEGS = 2

	class Bird < Animal
	  def legs_in_bird
		LEGS
	  end
	end
end

class MyAnimals::Oyster < Animal
	def legs_in_oyster
	  LEGS
	end
end

puts Oyster.new.kind_of?(MyAnimals)