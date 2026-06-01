#"Jour2 Conditions"
#puts "Entrez un chiffre"
#nombre = gets.chomp.to_i

#secret = 15

#if nombre < secret
#  puts "#{nombre} est plus petit"

#elsif  nombre > secret  
#  puts "#{nombre} est plus grand"  
#else 
#  puts "coreccto"
#end

#Palendrome
 #puts "Entrez un mot"
 #mot = gets.chomp

 #if mot == mot.reverse
 #  puts "Oui,#{mot} est palendrome"           #== cest a dire quil est identique au lui meme

 #else
 # puts "non,ce n'est pas un palendrome"
 #end

 #Tableau et Hash 
 

 #Boucles
   #i =0
   #while i<10
   #  i = i+1
   #  puts i
   #end
  #1
  #2
  #3
  #..
  #10

 ##adeviner = 4
 # a =0
#while adeviner != a
  #puts "Entrez votre chiffre "
 # a = gets.chomp.to_i
#end
#puts "Vous avez devinnez


adeviner = 4
for a in 1..5
  puts "Enter the number"
  a = gets.chomp.to_i
  if a > adeviner 
    puts "too big"
  elsif a < adeviner 
    puts "too small"
  else 
    puts "bravo"
  end
end
