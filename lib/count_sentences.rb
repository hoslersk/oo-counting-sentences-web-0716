require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    counter = 0
    if self.empty?
      return counter
    else
      words = self.split(" ")
      words.each do |word|
        if word.include?(".") || word.include?("?") || word.include?("!")
          counter = counter + 1
        end
      end
      return counter
      # counter = counter + self.count(".")
      # counter = counter + self.count("!")
      # counter = counter + self.count("?")
      # return counter
    end

  end
end
