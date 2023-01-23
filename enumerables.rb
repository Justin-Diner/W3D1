require 'byebug'
class Array

	def my_each(&blk)
		i = 0
		while i < self.length  
			self[i] = blk.call(self[i])
			i += 1
		end
		self
	end

	def my_select(&blk)
		# debugger
		ans = []

		self.my_each do |ele|
			ans << blk.call(ele)
		end

		# arr = self.my_each(blk.call)
		# i = 0
		# while i < arr.length
		# 	if blk.call(arr[i])
		# 	ans << arr[i]
		# 	end
		# end



		ans
	end

end

my_arr = [1, 2, 3, 4, 5]
#blk = { |ele| puts ele } 
p my_arr.my_each { |ele| ele } 

p my_arr.my_select { |ele| ele == 2 || ele == 5 }




