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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end  

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  songs.each_with_index {|song, i| 
    if input == song || input == (i+1).to_s
      puts "Playing #{songs[i]}"
      return ""
    end
  }  
    puts "Invalid input, please try again"
end

=begin
def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  x = 0
  songs.each_with_index {|song, i| 
    if input == song || input == (i+1).to_s
      puts "Playing #{songs[i]}"
      x += 1
    end
  }
  if x == 0
    puts "Invalid input, please try again"
  end
end
=end

def list(songs)
  songs.each_with_index {|n, i| puts "#{i+1}. #{n}"}
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = 1
  while input != "exit" do
    puts "Please enter a command:"
    input = gets.strip
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
    end
  end
end  