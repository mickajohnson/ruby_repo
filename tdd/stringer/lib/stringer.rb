require "stringer/version"

module Stringer
  def self.spacify *strings
    strings = strings[0] if strings[0].is_a?(Array)
    string = ""
    strings.each do |s|
        string += " " + s
    end
    string.strip!
  end
  def self.minify string, length
    if string.length > length
      string = string[0, length]
      string << "..."
    end
    string
  end
  def self.replacify string, replaced, replacement
    string = self.tokenize string
    array = []
    string.each do |word|
      if word == replaced
        word = replacement
      end
      array << word
    end
    string = self.spacify array
    string
  end
  def self.tokenize string
    string = string.split(" ")
    string
  end
  def self.removify string, remove
    string = self.tokenize string
    string.delete_if {|word| word == remove}
    string = self.spacify string
  end
end
