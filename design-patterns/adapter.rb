# Adapter - convert interface of a class into something client expects

class Latin
  def phrase
    "Sic semper tyrannis"
  end
end

class EnglishAdapter < Latin
  def phrase
    adaptee = English.new
    adaptee.translated_phrase
  end
end

class English
  def translated_phrase
    "Thus always to tyrants"
  end
end

words = EnglishAdapter.new
puts words.phrase
