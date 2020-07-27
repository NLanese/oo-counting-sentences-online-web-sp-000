require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    if !(self.include?(".") || self.include?("?") || self.include?("!"))
      return 0
    end
    punct = 0
    self.each do | letter |
      if (letter == "." || letter == "?" || letter == "!")
        punct += 1
      end
    end
    return punct
    sentences = self
    if (self.include?("."))
      sentences = self.split(".")
    end
    if (self.include?("?"))
      sentences = self.split("?")
    end
    if (self.include?("!"))
      sentences = self.split("!")
    end
    return sentences
  end
end
