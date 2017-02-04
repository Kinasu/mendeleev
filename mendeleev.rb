require 'json'

file = File.read('mendeleev.json', encoding: 'utf-8')
elements = JSON.parse(file)

# выводим пользователю что у нас есть — вместе с количеством элементов
puts
puts "У нас всего элементов: #{elements.keys.size}"
puts elements.keys
puts
puts "О каком элементе хотите узнать?"
element = gets.chomp

# проверка — есть ли в хэше элемент, который спросил пользователь
if elements.has_key?(element)
  user_element = elements[element]

  puts "Порядковый номер: #{user_element["number"]}"
  puts "Название: #{user_element["title"]}"
  puts "Первооткрыватель: #{user_element['discoverer']} (#{user_element['year']})"
  puts "Плотность: #{user_element['density']}"
else
  puts "Извините, про такой элемент мы еще не знаем."
end
