class Array

  def sum_of_numeric_elements
    select { |item| item.is_a? Numeric }.reduce(:+)
  end

  def product_of_numeric_elements
    select { |item| item.is_a? Numeric }.reduce(:*)
  end

  def even_numeric_elements
    select { |item| item.is_a? Fixnum }.select(&:even?)
  end

  def odd_numeric_elements
    select { |item| item.is_a? Fixnum }.select(&:odd?)
  end

  def string_elements
    select { |item| item.is_a? String }
  end

  def lowercase_string_elements_as_uppercase
    select { |item| item.is_a? String }
    .select { |string| string == string.downcase }
    .map { |string| string.capitalize }
  end

  def capitalized_elements
    select { |item| item.is_a? String }
    .select { |string| string[0] == string[0].upcase }
  end
end
