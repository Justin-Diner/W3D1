class Array
	def my_each(&blk)
		i = 0
		while i < self.length  
			blk.call(self[i])
			i += 1
		end
		self
	end
end

my_arr = [1, 2, 3]
#blk = { |ele| puts ele } 
p my_arr.my_each { |ele| ele } 




