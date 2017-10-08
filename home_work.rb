class HomeWork
  # Найти сумму четных чисел
  def self.get_sum_even start, _end
    sum = 0
    for i in start.._end
      if i % 2 == 0 then
        sum += i
      end
    end
    return sum
  end

  # Проверить простое ли число? (число называется простым, если оно делится только само на себя и на 1)
  def self.is_simple n
    for i in 2..n/2
      if n % i == 0 && i != n then
        return false
      end
    end
    return true
  end

  # Найти корень натурального числа с точностью до целого (рассмотреть вариант последовательного подбора и метод бинарного поиска)

  # Вычислить факториал числа n. n! = 1*2*…*n-1*n;!
  def self.factorial n
    return n == 1 ? n : n * factorial(n-1)
  end

  # Посчитать сумму цифр заданного числа
  def self.numbs_sum n
    res = 0
    while n > 0
      t = n % 10
      n = (n  - t)/10
      res += t
    end
    return res
  end

  # Вывести число, которое является зеркальным отображением последовательности цифр заданного числа, например, задано число 123, вывести 321.
  def self.mirror_numb n
    res = 0
    while n > 0
      t = n % 10
      n = (n  - t)/10
      res = res * 10 + t
    end
    return res
  end
end