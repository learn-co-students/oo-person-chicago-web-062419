require "pry"

class Person
    attr_accessor :bank_account, :happiness
    attr_reader :name, :hygiene
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def bank_account
        @bank_account
    end

    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        p "all about the benjamins"
    end

    # # My code for .hygiene.
    # def hygiene=(hygiene)
    #     @hygiene = hygiene
        
    #     if @hygiene > 10
    #         @hygiene = 10
    #     elsif @hygiene < 0
    #         @hygiene = 0
    #     end
    #     # binding.pry
    # end

    # Learn.co's solution for .hygiene.
    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        self.hygiene
        # binding.pry
    end

    def take_bath
        self.hygiene += 4
        @hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        # name.name passes in the arg name.name. While self.name is the caller's name.
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        # binding.pry
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            self.politics
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            self.weather
        else
            "blah blah blah blah blah"
        end
        
    end

    def politics
        "blah blah partisan blah lobbyist"
    end

    def weather
        "blah blah sun blah rain"
    end

end

# p my_person = Person.new("Bob", bank_account = 25, happiness = 8, hygiene = 12)
# p my_person.start_conversation("Felix", "weather")
