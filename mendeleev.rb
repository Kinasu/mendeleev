require 'json'

file = File.read('mendeleev.json', encoding: 'utf-8')
elems = JSON.parse(file)

# выводим пользователю что у нас есть — вместе с количеством элементов
puts "У нас всего элементов: #{elems.keys.size}"



puts "О каком элементе хотите узнать?"

element = gets.chomp

# проверка — есть ли в хэше элемент, который спросил пользователь
if elems.has_key?(element)
  user_elem = elems.values_at(element)
  user_elem = user_elem[0]
  puts user_elem.class
  puts "Порядковый номер: #{user_elem["number"]}"
  puts "Название: #{user_elem["title"]}"
  puts "Первооткрыватель: #{user_elem['discoverer']} (#{user_elem['year']})"
  puts "Плотность: #{user_elem['density']}"

else
  puts "Извините, про такой элемент мы еще не знаем."
end


