class House

    attr_reader :starting_clause
    
    def initialize(starting_clause = "Phrase goes here")
        @starting_clause = starting_clause
    end

    def recite
       (1..12).collect{|i| line(i)}.join("\n")
    end
    
    def random_number
        rand(1..12)
    end

    def ending_clause
        " the house that Jack built"
    end

    def line
        puts "#{starting_clause} #{pieces.shuffle.join(' ') + ending_clause}.\n"      
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

house = House.new("Thar be")
house.line