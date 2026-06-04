#Tableau :
=begin
classe = ["Ali", "Sara", "Hani", "Lina"]

puts "Voici la classe :"
puts classe

puts "Le premier élève est :"
puts classe[0]
=end



#TP jour 3 Calcul des frequences
text = "Un homme nourrissait une chèvre et un âne. Or la chèvre devint envieuse de l’âne, parce qu’il était trop bien nourri. Et elle lui dit : « Entre la meule à tourner et les fardeaux à porter, ta vie est un tourment sans fin, » et elle lui conseillait de simuler l’épilepsie, et de se laisser tomber dans un trou pour avoir du repos. Il suivit le conseil, se laissa tomber et se froissa tout le corps. Son maître ayant fait venir le vétérinaire, lui demanda un remède pour le blessé. Le vétérinaire lui prescrivit d’infuser le poumon d’une chèvre ; ce remède lui rendrait la santé. En conséquence on immola la chèvre pour guérir l’âne. "
frequence =Hash.new(0)
mots = text.downcase.tr('.,";', '').split(' ')
mots.each do |mot|
  frequence[mot] += 1
end
frequence = frequence.sort_by {|mot,count| count}
frequence.reverse!
frequence.each do |mot,count|
  puts "le mot #{mot} apparait #{count} fois"
end



=begin 
frequences.each do |mot, count|
  
end
puts "Le mots \"#{mots[0]}\" apparait #{mots[1]} fois "

puts frequences 
puts text.length
=end