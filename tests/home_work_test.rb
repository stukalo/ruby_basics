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

  def test_get_sum_even
    test_data = [
        {:start => 0, :_end => 0, :exp => 0},
        {:start => 1, :_end => 5, :exp => 6},
        {:start => 10, :_end => 15, :exp => 36}
    ]
    test_data.each do |item|
      act = HomeWork.get_sum_even(item[:start], item[:_end])
      assert(item[:exp] == act)
    end
  end

  def test_get_min
    test_data = [
        {:ar => [], :exp => nil},
        {:ar => [1], :exp => 1},
        {:ar => [2, 5], :exp => 2},
        {:ar => [2, 3, 5, 1, 6], :exp => 1}
    ]
    test_data.each do |item|
      act = HomeWork.get_min(item[:ar])
      assert(item[:exp] == act)
    end
  end

  def test_get_max
    test_data = [
        {:ar => [], :exp => nil},
        {:ar => [1], :exp => 1},
        {:ar => [2, 5], :exp => 5},
        {:ar => [2, 3, 5, 1, 6], :exp => 6}
    ]
    test_data.each do |item|
      act = HomeWork.get_max(item[:ar])
      assert(item[:exp] == act)
    end
  end

  def test_get_min_index
    test_data = [
        {:ar => [], :exp => -1},
        {:ar => [1], :exp => 0},
        {:ar => [2, 5], :exp => 0},
        {:ar => [2, 3, 5, 1, 6], :exp => 3}
    ]
    test_data.each do |item|
      act = HomeWork.get_min_index(item[:ar])
      assert(item[:exp] == act)
    end
  end

  def test_get_max_index
    test_data = [
        {:ar => [], :exp => -1},
        {:ar => [1], :exp => 0},
        {:ar => [2, 5], :exp => 1},
        {:ar => [2, 3, 5, 1, 6], :exp => 4}
    ]
    test_data.each do |item|
      act = HomeWork.get_max_index(item[:ar])
      assert(item[:exp] == act)
    end
  end

  def test_get_odd_items_sum
    test_data = [
        {:ar => [], :exp => 0},
        {:ar => [1], :exp => 0},
        {:ar => [2, 5], :exp => 5},
        {:ar => [2, 3, 5, 1, 6], :exp => 4}
    ]
    test_data.each do |item|
      act = HomeWork.get_odd_items_sum(item[:ar])
      assert(item[:exp] == act)
    end
  end

  def test_reverse
    test_data = [
        {:ar => [], :exp => []},
        {:ar => [1], :exp => [1]},
        {:ar => [2, 5], :exp => [5, 2]},
        {:ar => [2, 3, 5, 1, 6], :exp => [6, 1, 5, 3, 2]}
    ]
    test_data.each do |item|
      HomeWork.reverse(item[:ar])
      assert(item[:exp] == item[:ar])
    end
  end

  def test_count_odd
    test_data = [
        {:ar => [], :exp => 0},
        {:ar => [1], :exp => 1},
        {:ar => [2, 5], :exp => 1},
        {:ar => [2, 3, 5, 1, 6], :exp => 3}
    ]
    test_data.each do |item|
      act = HomeWork.count_odd(item[:ar])
      assert(item[:exp] == act)
    end
  end

  def test_half_reverse
    test_data = [
        {:ar => [], :exp => []},
        {:ar => [1], :exp => [1]},
        {:ar => [2, 5], :exp => [5, 2]},
        {:ar => [1, 2, 3, 4], :exp => [3, 4, 1, 2]},
        {:ar => [2, 3, 5, 1, 6], :exp => [1, 6, 5, 2, 3]}
    ]
    test_data.each do |item|
      HomeWork.half_reverse(item[:ar])
      assert(item[:exp] == item[:ar])
    end
  end

  def test_bubble_sort
    test_data = [
        {:ar => [], :exp => []},
        {:ar => [1], :exp => [1]},
        {:ar => [5, 2], :exp => [2,5]},
        {:ar => [1, 2, 3, 4], :exp => [1,2,3,4]},
        {:ar => [2, 3, 5, 1, 4], :exp => [1, 2, 3, 4, 5]}
    ]
    test_data.each do |item|
      HomeWork.bubble_sort(item[:ar])
      assert(item[:exp] == item[:ar])
    end
  end

end