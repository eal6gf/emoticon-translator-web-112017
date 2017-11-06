# require modules here
require 'yaml'
require 'pry'

def load_library(filepath)
  # code goes here
  emoticons_hash = YAML.load_file(filepath)
  new_hash = {'get_meaning' =>{}, 'get_emoticon'=>{}}
  emoticons_hash.each do |k,v|
    new_hash['get_meaning'][v[1]] = k
    new_hash['get_emoticon'][v[0]] = v[1]
  end
  new_hash
end

def get_japanese_emoticon(filepath,emoticon)
  # code goes here
  translate_hash = load_library(filepath)
  if translate_hash['get_emoticon'][emoticon]
    translate_hash['get_emoticon'][emoticon]
  else
    "Sorry, that emoticon was not found"
  end

end

def get_english_meaning(filepath,emoticon)
  # code goes here
  translate_hash = load_library(filepath)
  if translate_hash['get_meaning'][emoticon]
    translate_hash['get_meaning'][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
