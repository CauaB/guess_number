# Guess Number
# O computador escolhe um número secreto e o jogador tenta adivinhar qual é. 
numero_secreto = rand(1..100)
puts "Bem-vindo ao Jogo de Adivinhação!"
puts "Eu escolhi um número entre 1 e 100. Tente adivinhar qual é!"

# Variável para controlar se o jogador acertou
acertou = false

# O jogo continua enquanto o jogador não tiver acertado
until acertou
  # Pede um palpite ao jogador
  print "Digite o seu palpite: "
  
  # gets.chomp pega a entrada do usuário e .to_i converte para um número inteiro
  palpite = gets.chomp.to_i

  # Compara o palpite com o número escolhido
  if palpite == numero_secreto
    puts "Parabéns! Você acertou! O número era #{numero_secreto}."
    acertou = true # O loop vai parar na próxima verificação
  elsif palpite > numero_secreto
    puts "O número secreto é menor que #{palpite}."
  else
    puts "O número secreto é maior que #{palpite}."
  end
end

puts "Fim de jogo. Obrigado por jogar!"
