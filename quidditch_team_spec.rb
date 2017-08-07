require( "minitest/autorun" )
require_relative( "./quidditch_team" )

#Make a class to represent a Team that has
# the properties Team name (String), Players
 # (Array of strings) and a Coach (String).
class TestQuidditchTeam < MiniTest::Test

#For each property in the class make a Getter
# method than can return them.
  def test_team_name
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "win" )
    assert_equal( "Gryffindor", team.name )
  end

  def test_team_players
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "win" )
    expected = "Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"
    actual = team.players
    assert_equal( expected, actual)
  end

# Create a setter method to allow the
# coach's name to be updated.
  def test_team_coach
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "win" )
    team.coach = "Voldemort"
    assert_equal( "Voldemort", team.coach )
  end

# Create a method that adds a new player to
 # the player's array.
  def test_new_player
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "win" )
    expected = "Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter", "Dobby"
    actual = team.new_player( "Dobby" )
    assert_equal( expected, actual )
  end

# Add a method that takes in a string of a
# player's name and checks to see if they
# are in the players array.
  def test_look_for_player
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "win" )
    assert_equal( true, team.look_for_player( "Ginny Weasley" ))
  end

  def test_look_for_player
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "win" )
    assert_equal( false, team.look_for_player( "Hermione Granger" ))
  end


# Add a points property into your class that
# starts at 0.
  def test_points
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "win" )
    assert_equal( 0, team.points( 0 ) )
  end


# Create a method that takes in whether the
# team has won or lost and updates the
# points property for a win.
  def test_game_outcome__win
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "win" )
    assert_equal( 1, team.outcome )
  end

  def test_game_outcome__lose
    team = QuidditchTeam.new( "Gryffindor", ["Katie Bell", "Ginny Weasley", "Demelza Robins", "Jimmy Peakes", "Ritchie Coote", "Ron Weasley", "Harry Potter"], "Harry Potter", 0, "lose" )
    assert_equal( 0, team.outcome )
  end

end
