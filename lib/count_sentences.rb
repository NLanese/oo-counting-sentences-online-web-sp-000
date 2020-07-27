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
    
    splitSent = self.split(".")
    splitSentQuest = splitSent.collect do | text |
       text.split("?")
     end
    splitAll = splitSentQuest.collect do | text |
      text.split("!")
    end
    
    return splitAll
  end
end
