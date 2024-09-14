require 'ffi'

module Adder
  extend FFI::Library

  ffi_lib './mylibadder.so'

  # Maps the add function from the C library to Ruby.
  # The arguments and return type are specified in the array
  # ([:int, :int] for two integers and :int for the return type).
  attach_function :myadd, [:int, :int], :int
end

result = Adder.myadd(7, 5)
puts "The result of adding 7 and 5 is: #{result}"

