def sign_up
  puts "Choisissez votre mot de passe :"
  print "> "
  $password = gets.chomp
end

def log_in
  user_input = ""

  while (user_input != $password) do
    puts "Entrez votre mot de passe :"
    print "> "
    user_input = gets.chomp
  end

  welcome_screen

end

def welcome_screen
  puts "Bienvenue dans votre espace super méga secret !"
end

def perform
  sign_up
  log_in
end

perform
