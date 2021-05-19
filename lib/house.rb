class House

    def recite
       (1..12).collect{|i| line(i)}.join("\n")
    end


    def starting_clause(number)
        if number
            "This is"
        else
            return
        end
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
        'the house that Jack built',
    ]
    end

    def line(number)
        case number
        when number
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        end
            
    end
       

end