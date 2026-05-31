puts 'entrez un nombre'
nombre = gets.chomp.to_i
 if nombre.even? 
   puts "#{nombre} est pair"
 else
   puts "#{nombre} est impaire"
 end
 