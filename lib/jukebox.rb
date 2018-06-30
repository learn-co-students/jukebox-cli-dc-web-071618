songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands: 
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song,index|
    number = index + 1
    puts "#{number}. #{songs[index]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if songs.include?(response)
    puts "Playing #{response}"
  elsif response.to_i != 0 && response.to_i < songs.length
    index = response.to_i - 1
    puts "Playing #{songs[index]}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  until command == "exit"
    command = gets.chomp
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    end
  end
  exit_jukebox
end
  
  