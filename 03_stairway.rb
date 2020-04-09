$stat = 0

def init_game

  puts "Nouvelle partie"
  $placement = 0

end

def random
  dice = rand(1..6)
  #puts dice
  return dice
end

def action(dice)
  if(dice == 1 && $placement != 0)
    $placement -= 1
    #puts "Vous reculez d'une case, vous êtes case #{$placement}"
  elsif(dice > 4)
    $placement += 1
    #puts "Vous avancez d'une case, vous êtes case #{$placement}"
  else
    #puts "Vous ne vous déplacez pas, vous êtes case #{$placement}"
  end
end

def game(num)
  
  num.times {
  init_game
  
  while ($placement != 10) do
    dice = random
    action(dice)
    $stat += 1
  end

  puts "Bravo, vous avez gagné !"
}
end

def moyenne(num)
  
  #moyenne = ($stat/num)
  puts $stat/num
end

def perform

  puts "Combien de partie voulez-vous faire ?"
  num = gets.chomp.to_i
  game(num)
  puts $stat
  moyenne(num)
  
end

perform
