require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene, :happiness
   
    def initialize(name, happiness = 8, hygiene = 8, bank_account = 25)
        @name = name
        @happiness = happiness
        @hygiene = hygiene
        @bank_account = bank_account
    end

    def happiness= (number)
        if number > 10 
            @happiness = 10
        elsif number < 0
            @happiness = 0
        else 
            @happiness = number
        end
    end

    def hygiene= (number)
        if number > 10 
                @hygiene = 10
        elsif number < 0
                @hygiene = 0
         else 
                @hygiene = number
        end
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
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=
        @hygiene -= 3
        self.happiness=
        @happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=
        @happiness += 3
        friend.happiness= friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            person.happiness= person.happiness - 2
            self.happiness= @happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            person.happiness= person.happiness + 1
            self.happiness= @happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end

person = Person.new("bob", 3, 5, 64)
p person
person2 = Person.new("joe", 9, 6)
p person2
person3 = Person.new("myname")
p person3
person2.work_out
p person2
person2.take_bath
p person2
p person2.clean?

p person2.call_friend(person)