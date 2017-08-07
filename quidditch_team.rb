class QuidditchTeam

  attr_reader( :name, :players, :coach, :points, :outcome )
  attr_writer( :name, :players, :coach, :points, :outcome )

  def initialize( name, players, coach, points, outcome )
    @name = name
    @players = players
    @coach = coach
    @points = points
    @outcome = outcome
  end

# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# getter methods
  # def name()
  #   return @name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach ()
  #   return @coach
  # end

# setter methods
  # def set_coach( coach)
  #   @coach = coach
  # end


  def new_player( new_player )
    @players.push( new_player)
    return @players
  end


  def look_for_player( player )
      if @players == player
        return true
      end
      return false
  end


  def points( score )
    return @points
  end


  def outcome ()
    if @outcome == "win"
      return @points += 1
    end
    return @points
  end

end
