#LES METHODES JOUR 4:
=begin
def convert_to_min(seconds)
  return seconds/60
  
end
puts convert_to_min(3600)
=end


=begin
def bonjour(nom)
  "bonjour #{nom} !"
end
puts bonjour("louayyyyzzzz")
=end
def liste (prefix, *noms)
  noms.each do |nom|
    puts "-#{prefix} #{noms}"
  end
end

#reorganiser de A a Z :
def reorganiser_liste(croissant , *noms)
  nouveau_noms = []
  noms.each do |nom|
    nouveau_noms << nom.to_s
  end
  nouveau_noms.sort!
  if croissant
    nouveau_noms.reverse! 
  end
  
return nouveau_noms  
end

# organiser a -> Z
puts reorganiser_liste(true,'abdelkrim', 'hani', 'haj moussa',:Manon, :Jul, 'Antoine').inspect
# organiser Z -> A
 puts reorganiser_liste(false, 'abdelkrim', 'hani', 'haj moussa',:Manon, :Jul, 'Antoine').inspect
