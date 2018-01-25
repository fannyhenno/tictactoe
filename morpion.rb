class Boardcase
  #deffinition des valeurs (X, O, ou vide), ainsi que numéros de case)
  attr_accessor = :X, :O, :empty
  @X = X
  @O = O
  @empty = " "
  
  
  def to_s
    # numéros de case avec valeur en string
  array[0, 0] = @a1 = " "
  array[0, 1] = @a2 = " "
  array[0, 2] = @a3 = " "
  array[1, 0] = @b1 = " "
  array[1, 1] = @b2 = " "
  array[1, 2] = @b3 = " "
  array[2, 0] = @c1 = " "
  array[2, 1] = @c2 = " "
  array[2, 2] = @c3 = " "   
  end
end

class Board
  #include Enumerable je ne vois pas comment l'intégrer
  #mon board avec ses 9 boardcases et leurs valeurs
  attr_accessor :my_board

  def my_board
    
    @my_board[@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]

  puts
  puts "   1   2   3"
  puts "A  #{@a1} | #{@a2} | #{@a3} " 
  puts "  ---|---|---"
  puts "B  #{@b1} | #{@b2} | #{@b3} "
  puts "  ---|---|---"
  puts "C  #{@c1} | #{@c2} | #{@c3} "

  end

  
  def play(square_availability)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
    #cela permet de verifier si la case du jeu est déjà remplie ou non
    if square_availability == " "
      true
    else
      puts "Déjà pris! Change!"
    end
  end
  #determine les combos gagnants
  def victoire
   
  [[@a1, @a2, @a3],
  [@a1, @b2, @c3],
  [@a1, @b1, @c1],
  [@b1, @b2, @b3],
  [@c1, @c2, @c3],
  [@c1, @b2, @a3],
  [@a2, @b2, @c2],
  [@a3, @b3, @c3]]
  end
end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
#class Player
    attr_accessor :name, :valeur
  
  
  def initialize(name)
    
    puts "Quel est votre nom?"
    @name = name = gets
  end
=begin
  def valeur(valeur)
    @valeur1 = "X"
    @valeur2 = "O"
  end  
=end

joueur1 = Player.new(@name)
puts "Salut " + joueur1.name + " La partie va démarrer! Tu as les X!"

joueur2 = Player.new(@name)
puts "Salut " + joueur2.name + " La partie va démarrer! Tu as les O!"
#name.new

end
    
class Game
 
  def turn
    #TO DO : affiche le plateau, demande au joueur ce qu'il jour 
            "a1" => @a1,
            "a2" => @a2,
            "a3" => @a3,
            "b1" => @b1,
            "b2" => @b2,
            "b3" => @b3,
            "c1" => @c1,
            "c2" => @c2,
            "c3" => @c3}

      puts "Choisis une case:" + Player.name
      Player = gets.chomp
      player_choice_hash.each do |choice, square|
          if user_choice == choice 
            if check_validity(square)
            square.sub!(" ", "X", "O")
            print my_board
            end
        exit
          end
  end
          
  def victoire 
    victoire_combos.each do |combos| 
      if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
      puts "You loose" + joueur1.name + "! Good luck next time."
      puts "You Win" + joueur2.name + "! Yeah!"
      exit 
      elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
      puts "You win" + joueur1.name + "! Yeah!"
      puts "You loose" + joueur2.name + "! Good luck next time."
      exit
      end
  end


  def run_game
    # TO DO : lance la partie

    run_game.new 
    Board
    while true
      print my_board
    Player
    Game
    
  end
  
end 

run_game.new