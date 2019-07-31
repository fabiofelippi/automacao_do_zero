#Operadores matemáticos

v1 = 10
v2 = 20

#Soma
res = v1 + v2
puts res

#Subtração
res = v1 - v2
puts res

#Multiplicação
res = v1 * v2
puts res

#Divisão
res = v1 / v2
puts res


# Operadores de comparação

n1 = 10
n2 = 10
n3 = '10'
n4 = 20

res = n1 == n2 #true
puts res

res = n1 == n3 #false
puts res

puts n1 < n2
puts n1 < n4
puts n1 != n2
puts n1 != n4
puts n1.eql?(n2)    #O mesmo que '=='
puts n1.eql?(n3)
puts n1.eql?(n4)
