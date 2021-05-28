PIECES =  
    [
        'the horse and the hound and the horn that belonged to',
        'the farmer sowing his corn that kept',
        'the rooster that crowed in the morn that woke',
        'the priest all shaven and shorn that married',
        'the man all tattered and torn that kissed',
        'the maiden all forlorn that milked',
        'the cow with the crumpled horn that tossed',
        'the dog that worried',
        'the cat that killed',
        'the rat that ate',
        'the malt that lay in',
        'the house that Jack built',
    ]

 RANDOMPIECES =
    [
        'the belonged that horse and the hound and the horn to',
        'the sowing farmer his kept that corn',
        'the crowed that rooster in the work that morn',
        'the married all shaven and shorn that priest',
        'the kissed all tattered and torn that man',
        'the milked all forlorn that maiden',
        'the tossed with the crumpled horn that cow',
        'the worried that dog',
        'the killed that cat',
        'the ate that rat',
        'the lay that malt in',
        'the Jack that house built',
    ]



class House

    attr_reader :starting_clause
    
    def initialize(starting_clause = "This is")
        @starting_clause = starting_clause
    end

    def recite
       (1..12).collect{|i| line(i)}.join("\n")
    end

    def shuffle!
        PIECES.shuffle!
        self
    end

    def line(number)
        "#{starting_clause} #{PIECES.last(number).join(' ')}.\n"      
    end


    private


   

end

class RandomVerbClauseHouse < House
    def line (number)
        "#{starting_clause} #{RANDOMPIECES.shuffle.last(number).join(' ') + " the house that Jack built"}.\n"       
    end
     
  
end




class RandomHouse < House

    def line (number)
        "#{starting_clause} #{RANDOMPIECES.shuffle.last(number).join(' ') + " the house that Jack built"}.\n"       
    end

end






