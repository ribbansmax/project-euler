class PalindromeProduct
  attr_reader :palindromes

  def initialize()
    @palindromes = []
  end

  def palindrome?(n)
    n.to_s == n.to_s.reverse
  end

  def find_palindromes
    i = 999
    j = 999
    while i > 100
      while j > 100
        p = i * j
        @palindromes << p if palindrome?(p)
        j = j - 1
      end
      i = i - 1
      j == 999
    end
  end

  def largest_palindrome
    find_palindromes()
    @palindromes.max
  end
end

require'pry';binding.pry
