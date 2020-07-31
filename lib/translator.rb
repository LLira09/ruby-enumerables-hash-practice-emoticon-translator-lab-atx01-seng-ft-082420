# require modules here
require 'pry'
require 'yaml'
emots = YAML.load_file('./lib/emoticons.yml')

def load_library(emots)
  emoticons = YAML.load_file(emots)
  emot_library = {}
  emoticons.each do |key, value|
    emot_library[key] = {}
    emot_library[key][:english] = value[0]
    emot_library[key][:japanese] = value[1]
  end
  emot_library
end

def get_japanese_emoticon(emots, emoticon)
  emoticon_lib = load_library(emots)
  emoticon_lib.each do |key, value|
    if emoticon == value[:english]
      return value[:japanese]
    binding.pry
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(emots, emoticon)
  emoticon_lib = load_library(emots)
  
end


