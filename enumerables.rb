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
		ans
	end

	def my_reject(&blk)
		out_arr = []

		self.my_each do |ele|
			if !blk.call(ele)
				out_arr << ele
			end
		end
		out_arr
	end

	def my_any?(&blk)
		out_arr = []

		self.my_each do |ele|
			out_arr << ele if !blk.call(ele)
		end
		self.length != out_arr.length
	end

	def my_all?(&blk)
		out_arr = []

		self.my_each do |ele|
			out_arr << ele if blk.call(ele)
		end
		self.length == out_arr.length
	end

	def my_flatten
		return self if self.length == 0
		
		new_arr = []
		last_ele = self.pop # => [2, 3]

		# base case: any ele arr? == false

		# recursive case: any ele arr? == true

		self.each do |ele|
			if ele.is_a?(Array)
				ele.my_flatten
			else
				new_arr << ele
			end
		end



		# if self.length != 0
		# 	last_ele.my_flatten
		# end
		new_arr = []

	end

end

flat_arr = [1, [2, 3]]
p flat_arr.my_flatten # => [1, 2, 3]

my_arr = [1, 2, 3, 4, 5]
# blk = { |ele| puts ele } 
# p my_arr.my_each { |ele| ele } 
# p my_arr.my_select { |ele| ele == 2 || ele == 5 }
# p my_arr.my_reject { |ele| ele < 3}
# p my_arr.my_all? {|ele| ele > 0}









