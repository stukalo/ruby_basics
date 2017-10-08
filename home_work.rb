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
      n = (n - t)/10
      res += t
    end
    return res
  end

  # Вывести число, которое является зеркальным отображением последовательности цифр заданного числа, например, задано число 123, вывести 321.
  def self.mirror_numb n
    res = 0
    while n > 0
      t = n % 10
      n = (n - t)/10
      res = res * 10 + t
    end
    return res
  end

  # Найти минимальный элемент массива
  def self.get_min ar
    if (ar.length == 0)
      return nil
    end
    min = ar[0]
    ar.each do |item|
      if (item < min)
        min = item
      end
    end
    return min
  end

  # Найти максимальный элемент массива
  def self.get_max ar
    if (ar.length == 0)
      return nil
    end
    max = ar[0]
    ar.each do |item|
      if (item > max)
        max = item
      end
    end
    return max
  end

  # Найти индекс минимального элемента массива
  def self.get_min_index ar
    if (ar.length == 0)
      return -1
    end
    min_index = 0
    ar.each_with_index do |item, index|
      if (ar[min_index] > item)
        min_index = index
      end
    end
    return min_index
  end

  # Найти индекс максимального элемента массива
  def self.get_max_index ar
    if (ar.length == 0)
      return -1
    end
    max_index = 0
    ar.each_with_index do |item, index|
      if (ar[max_index] < item)
        max_index = index
      end
    end
    return max_index
  end

  # Посчитать сумму элементов массива с нечетными индексами
  def self.get_odd_items_sum ar
    res = 0
    ar.each_with_index do |item, index|
      if (index % 2 != 0)
        res += item
      end
    end
    return res
  end

  # Сделать реверс массива (массив в обратном направлении)
  def self.reverse ar
    i = 0
    while i < ar.length/2
      tmp = ar[i]
      ar[i] = ar[ar.length - i - 1]
      ar[ar.length - i - 1] = tmp
      i += 1
    end

  end

  # Посчитать количество нечетных элементов массива
  def self.count_odd ar
    res = 0
    ar.each do |item|
      if (item % 2 != 0)
        res += 1
      end
    end
    return res
  end

  # Поменять местами первую и вторую половину массива, например, для массива 1 2 3 4, результат 3412
  def self.half_reverse ar
    j = ar.length % 2;
    i = 0
    while (i < ar.length/2)
      tmp = ar[i]
      ar[i] = ar[ar.length / 2 + i + j]
      ar[ar.length / 2 + i + j] = tmp
      i += 1
    end
  end

  # Отсортировать массив (пузырьком (Bubble), выбором (Select), вставками (Insert))
  def self.bubble_sort ar
    ar.each_with_index do |a, i|
      ar.each_with_index do |b, j|
        if(ar[i] < ar[j])
          tmp = ar[i]
          ar[i] = ar[j]
          ar[j] = tmp
        end
      end
    end
  end
end