require 'test/unit'
require_relative '../home_work'

class HomeWorkTest < Test::Unit::TestCase

  def test_factorial
    test_data = [
        {:n => 5, :exp => 120},
        {:n => 1, :exp => 1}
    ]
    test_data.each do |item|
      act = HomeWork.factorial(item[:n])
      assert(item[:exp] == act)
    end
  end

  def test_numbs_sum
    test_data = [
        {:n => 0, :exp => 0},
        {:n => 1, :exp => 1},
        {:n => 11, :exp => 2},
        {:n => 123, :exp => 6}
    ]
    test_data.each do |item|
      act = HomeWork.numbs_sum(item[:n])
      assert(item[:exp] == act)
    end
  end

  def test_mirror_numb
    test_data = [
        {:n => 0, :exp => 0},
        {:n => 1, :exp => 1},
        {:n => 11, :exp => 11},
        {:n => 123, :exp => 321}
    ]
    test_data.each do |item|
      act = HomeWork.mirror_numb(item[:n])
      assert(item[:exp] == act)
    end
  end

  def test_is_simple
    test_data = [
        {:n => 1, :exp => true},
        {:n => 2, :exp => true},
        {:n => 17, :exp => true},
        {:n => 20, :exp => false},
    ]
    test_data.each do |item|
      act = HomeWork.is_simple(item[:n])
      assert(item[:exp] == act)
    end
  end

  # def self.get_sum_even start, _end
  #   sum = 0
  #   for i in start.._end
  #     if i % 2 == 0 then
  #       sum += i
  #     end
  #   end
  #   return sum
  # end
  def test_get_sum_even
    test_data = [
        {:start => 0, :_end => 0, :exp => 0},
        {:start => 1, :_end => 5, :exp => 6},
        {:start => 10, :_end => 15, :exp => 26}
    ]
    test_data.each do |item|
      act = HomeWork.get_sum_even(item[:start], item[:_end])
      assert(item[:exp] == act)
    end
  end

end