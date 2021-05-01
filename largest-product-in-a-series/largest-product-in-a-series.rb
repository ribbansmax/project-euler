class SeriesProduct
  def split_series(s, l = 13)
    length = s.length
    products = []
    (length + 1 - l).times do |i|
      a = s[i..(i + l - 1)].split('').map(&:to_i)
      products << a.reduce(:*)
    end
    products.max
  end
end

require 'pry';binding.pry