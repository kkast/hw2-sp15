class Person
	def initialize(name, age)
		@name=name
		@age=age
		@nickname=@name[0...4]
	end
	def introduce
		"#{@name} is #{@age} year(s) old"
	end
	def birth_year
		@age.year.ago.year
	end
	def nickname
		@nickname
	end
end