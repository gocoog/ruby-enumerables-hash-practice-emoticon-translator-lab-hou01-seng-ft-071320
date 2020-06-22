require 'pry'
require "yaml"


def load_library(path)
  emojis = YAML.load_file(path)
  keys = [:english, :japanese]
<<<<<<< HEAD
  new_hash = {}
  emojis.each do |key, value|
    new = Hash[keys.zip(value)].to_h
    emojis[key].shift(2)
    emojis[key] = new
  end
=======
  inside_hash = Hash[keys.zip(value)]
  emojis.map {|key, value| [key, inside_hash]}.to+h
  binding.pry
  
  
>>>>>>> 5681b27c9cb37f32ee23a6bd7db92d321cbfe8e4
  emojis
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  result = ""
  library = load_library(path)
  library.each do |key, value|
    value.each do |language, face|
      if emoticon == face
        result =  library[key][:japanese]
        return result
      end
    end
    
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  # code goes here
  result = ""
  library = load_library(path)
  library.each do |key, value|
    value.each do |language, face|
      if emoticon == face
        result = key
        return result
      end
    end 
  end 
  "Sorry, that emoticon was not found"
end