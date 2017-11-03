module Doukaku
  module TestRunner
    def self.extended(obj)
      obj.instance_variable_set(:@n, 1)
    end

    def test(input, expected)
      actual = solve(input)

      print "#{format('%2d', @n)}: "
      if actual == expected
        puts "\x1b[32mpassed\x1b[0m"
      else
        puts "\x1b[31mfailed  input: #{input}, expected: #{expected}, actual: #{actual}\x1b[0m"
      end
      @n += 1
    end
  end
end
