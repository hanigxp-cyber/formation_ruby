#Asutuce et Typage:

#Proc et Bloc 
=begin
tableau = [1,2,6]
tableau2=tableau.map{|item| item * 2}
puts tableau2.inspect()
=end

=begin
def demo 
  puts "bonjour"
yield
 puts 'aurevoir'
end
 demo {puts 'comment cava ?'}
=end

=begin
def demo 
  puts 'bonjour'
  yield('Marc')
  puts 'aurevoir'
  yield('jean')
end

demo { |nom| puts "comment cava #{nom} ?" }
=end

eleve = [
  { note:15 , nom: 'Marine'},
  { note: 4 , nom: 'Marc'},
  { note:  10 , nom: 'Jean'},
  { note: 12 , nom:'Marine'}
]
def alamoyenne(eleve)
  eleve.each do |eleve|
    if eleve[:note] >= 10
      yield(eleve)
    end
  end
end
hani = Proc.new { |eleve| puts "#{eleve[:nom]} a la moyenne " }
alamoyenne eleve, &hani 

 # puts "#{eleve[:nom]} a la moyenne "
=begin
 a = [1, 2, 3, 6]
 b = [1, 7, 9]
 #a.map!{|n|n ** 2}
 #b.map!{|n|n ** 2}
 carrer = Proc.new{|n|n ** 2}
 a.map!(&carrer)
b.map!(&carrer)
 puts a.inspect()
 puts b.inspect()

 a.map(&:to_i)
=end

#lambda c'est pour verifier les params,return renvoie a la fonction
#Proc peu importe les parametres mais le return prends au dessus de la fonctions 

def alamoyenne (eleves, moyenneproc , pasmoyenneproc)
  eleves.each do |eleve|
    if eleve[:note] >= 10
      moyenneproc.call(eleve)
    else
      pasmoyenneproc.call(eleve)
    end
  end
end
affichequialamoyenne = ->(eleve) { puts "#{eleve[:note]} a la moyenne }"}
affichequiapaslamoyenne = lambda {|eleve| puts "#{eleve[:nom]} n'as pas la moyenne "}
alamoyenne(eleve , affichequialamoyenne, affichequiapaslamoyenne)
