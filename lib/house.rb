class House

    def recite
       (1..12).collect{|i| line(i)}.join("\n")
    end

    def end_phrase
        return "the house that Jack built"
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
        when 1
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 2
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 3
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 4
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 5
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 6
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 7
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 8
           "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 9
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 10
           "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 11
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        when 12
            "#{starting_clause(number)} #{pieces.last(number).join(' ')}.\n"
        end
            
    end
       

end