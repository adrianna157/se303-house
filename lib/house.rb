class House
    def line(number)
        number = randomizer(number)
        return number
    end
    def randomizer(number)
        case number
        when 2
            number = "This is the malt that lay in the house that Jack built.\n"
        when 3
            number = "This is the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            number = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 5
            number = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 6
            number = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        else
            number = "This is the house that Jack built.\n"
        
            return number
        end
            
    end
       

end