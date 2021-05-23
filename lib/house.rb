class House

    attr_reader :starting_clause
    
    def initialize(starting_clause = "This is")
        @starting_clause = starting_clause
    end

    def recite
       (1..12).collect{|i| line(i)}.join("\n")
    end

    def line(number)
        "#{starting_clause} #{pieces.last(number).join(' ')}.\n"      
    end

    

    private


    def pieces
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

# Delete the printing, Delete Ending Clause, Delete the Random Number, Back out of Random to get back to green, create new test that will test thar be
#TDD random feature - not test explicilty for randomness

class RandomHouse < House

    def line (number)
            "#{starting_clause} #{pieces.shuffle.last(number).join(' ') + " Thar be the house that Jack built"}.\n"       
    end

    def pieces
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
    ]
    end

end