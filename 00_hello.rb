def perform
  first_name = ask_first_name
  say_hello(first_name)
end

def say_hello(name)
  puts "Bonjour #{name} !"
end

def ask_first_name
  puts "Quelle est votre prénom ?"
  print "> "
  first_name = gets.chomp
  return first_name
end

perform
