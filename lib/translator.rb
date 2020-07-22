require "yaml"
require 'pry'

def load_library(file_path)
  hash = YAML.load(File.read(file_path))
  hash.collect do |key, value|
    hash[key] = {:english => value[0], :japanese => value[1]}
  end
  hash
end

def get_japanese_emoticon(file_path, emote)
  load_library(file_path).each do |key, value|
<<<<<<< HEAD
    if value[:english] == emote
      return value[:japanese]
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emote)
  load_library(file_path).each do |key, value|
    if value[:japanese] == emote
      return key
    end
  end
  "Sorry, that emoticon was not found"
=======
    binding.pry
  end
end

def get_english_meaning(file_path, emote)
  load_library(file_path)
>>>>>>> 3fe14133932f2612184d6cc81e4d31812010ac6c
end