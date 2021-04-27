class PalindromeProduct
  def palindrome?(n)
    n.to_s == n.to_s.reverse
  end
end

require'pry';binding.pry