

class House

    attr_reader :starting_clause
 
    
    def initialize(starting_clause = "This is")
        @starting_clause = starting_clause
        @phrase = pieces
       
    end

    def recite
       (1..12).collect{|i| line(i)}.join("\n")
    end

   

    def line(number)
        "#{starting_clause} #{pieces.last(number).join(' ')}.\n"      
    end


    private

    def  pieces  
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
    end
    
end

class VerbClauseHouse < House

   def line(number)
        "#{starting_clause} #{pieces[number].split(' ').reverse.join(' ')}.\n"      
    end
  
end


class RandomHouse < House

    def pieces
        super.shuffle
    end

end





house = RandomVerbClauseHouse.new
puts house.line(0)
# puts house.shuffle!
