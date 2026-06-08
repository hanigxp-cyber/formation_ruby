=begin
class Eleve 
end 
eleve = Eleve.new("Jean")
eleve.ajouternote(18)
eleve.ajouternote(10)
eleve.ajouternote(2)
eleves.notes
eleve.moyenne
=end

class Eleve
  def initialize(nom)
   @nom = nom
   @notes =[]
  end
 def ajouternote(note)
  @notes << note
 end
 def notes
  @notes
 end
 def nom
   @nom
 end
 def moyenne?
   moyenne >= 10
 end
 def moyenne 
  @notes.sum / @notes.length
 end
end
eleve = Eleve.new("Jean")
eleve.ajouternote(18)
eleve.ajouternote(10)
eleve.ajouternote(2)

puts  "Moyenne ? #{eleve.moyenne?}"
puts "Moyenne de #{eleve.nom}" , "#{eleve.moyenne}"




class Eleves
  @@majeur = 5
  def self.major(majorite)
    @@majeur = majorite
  end
  def initialize(nom, age)
    @nom = nom
    @age = age
  end

  def bonjour
    puts "Bonjour je suis #{@nom}, j'ai #{@age}."
  end

  def ismajeur 
    if @age.to_i >= @@majeur
      puts "#{@nom} est majeur"
    else
      puts "#{@nom} n'est pas majeur" 
    end
    
  end
end

Eleves.major(18)
eleve1 = Eleves.new('Jean', 10)
eleve1.bonjour
eleve1.ismajeur

=begin
@ = instance 
@@ = class
$ = global 
MAJUSCULE = constante
=end
