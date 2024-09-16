# Object#tap yields self to the block, and then returns self.
# Using Object#tap for debugging and chaining.

result = [1, 2, 3].tap { |arr| puts "Array before: #{arr.inspect}" }
                .map { |x| x * 2 }
                .tap { |arr| puts "Array after mapping: #{arr.inspect}" }
                .select { |x| x > 2 }

puts "Final result: #{result.inspect}"
