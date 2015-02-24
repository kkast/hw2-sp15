class Foobar
	def self.baz arr
		arr.uniq.map{|x| x=x.to_i+2}.select{|x| x%2==0 && x<=10}.sum
	end
end
