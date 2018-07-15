#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => 'users/aubreeabril/Projects/jukebox-cli-dc-web-071618/audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'users/aubreeabril/Projects/jukebox-cli-dc-web-071618/audio/Emerald-Park/02.mp3',
 "Hamburg" => 'users/aubreeabril/Projects/jukebox-cli-dc-web-071618/audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'users/aubreeabril/Projects/jukebox-cli-dc-web-071618/audio/Emerald-Park/04.mp3',
 "Wolf" => 'users/aubreeabril/Projects/jukebox-cli-dc-web-071618/audio/Emerald-Park/05.mp3',
 "Blue" => 'users/aubreeabril/Projects/jukebox-cli-dc-web-071618/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'users/aubreeabril/Projects/jukebox-cli-dc-web-071618/audio/Emerald-Park/07.mp3'
 }

def help
  help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP

  puts help
end



def list(my_songs)
  my_songs.keys.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name"
  song_to_play = gets.chomp
  if !my_songs.keys.include?(song_to_play)
    puts "Invalid input, please try again"
  else
    puts "Now playing #{song_to_play}"
    system 'open ' << my_songs[song_to_play]
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
