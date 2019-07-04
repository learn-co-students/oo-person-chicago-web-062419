require "pry"
class Person
    attr_reader :name
    attr_accessor :happiness, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness.between?(0,10)
            @happiness = happiness
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = 10
        end        
    end

    def hygiene=(hygiene)
        if hygiene.between?(0,10)
            @hygiene = hygiene
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = 10
        end        
    end

    def happy?
        return happiness > 7  
    end
    def clean?
        return hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.hygiene -=3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        # binding.pry
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end