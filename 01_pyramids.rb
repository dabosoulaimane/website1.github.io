def user_choice
  puts "Salut, bievenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  num = gets.chomp.to_i
  if (num % 2 == 0)
    puts "Nombre pair, merci de donner un nombre impair"
    return -1
  else
    puts "OKay, voilà le résultat :"
    return num
  end
end

def full_pyramid(num)
  for i in 1..num
    (num-i).times {print " "}
    i.times {print "#"}

    (i-1).times {print "#"}
    puts ""
  end
end

def reverse_pyramid(num)
  for i in 1..num
    i.times {print " "}
    (num-i).times {print "#"}


    (num-(i+1)).times {print "#"}
    puts ""
  end
end

def wtf_pyramid(num)
  full_pyramid(num/2+1)
  reverse_pyramid(num/2+1)
end

def perform
  num = user_choice
  wtf_pyramid(num)
end

perform
