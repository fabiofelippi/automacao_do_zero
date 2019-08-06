def imprime_idade
    puts 34
end

def imprime_nome
    puts 'Fernando'
end

imprime_nome
imprime_idade

def soma (v1, v2)
    puts v1 + v2
end

soma(5, 2)
soma 5, 2   #Funciona sem o parenteses

#Funcionalidade que deve exibir uma resposta para o usuário

def achou_bug(resposta)
    case resposta
    when 1
        puts 'Informe o dev'
    when 0
        puts 'Pode ir para prod'
    else
        puts 'Código inválido'
    end
end

puts 'Olá! Bem-vindo ao TestLink.RB v.1'
puts 'Informe 0, se o resultado é sem BUG.'
puts 'Informe 1, se o ocorreu bugs.'

resultado = STDIN.gets.to_i 
    #.to_i faz o parse para integer
    #.to_f faz o parse para float
    #.to_s faz o parse para string

achou_bug(1)
achou_bug(2)
puts resultado.class
achou_bug(resultado)

def retorna_nome
    'Fernando'
end

resultado = retorna_nome
puts resultado