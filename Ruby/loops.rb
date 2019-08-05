5.times do |i|
    puts 'Repetindo a mensagem ' + i.to_s + ' vez(es)'
end

init = 0
while init <=10 do
    puts 'Mensagem de WHILE ' + init.to_s + ' vez(es)'
    init += 1
end

for item in (0...10)
    puts 'Mensagem de FOR ' + item.to_s + ' vez(es)'
end

# Arrays (FOR EACH)
vingadores = ['IronMan', 'Hulk', 'SpiderMan']
puts vingadores.class

vingadores.each do |v|
    puts v
end