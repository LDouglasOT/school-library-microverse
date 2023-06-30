class Nameable 
    def correct_name
        return raise NotImplementedError
    end
end

class Decorator < Nameable
    def initialize(nameable)
      @nameable = nameable
    end
  
    def correct_name
      @nameable.correct_name
    end
  end
  
  class CapitalizeDecorator < Decorator
    def correct_name
      super.capitalize
    end
  end
  
  class TrimmerDecorator < Decorator
    def correct_name
      super[0..9]
    end
  end