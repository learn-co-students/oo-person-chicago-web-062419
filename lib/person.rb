# your code goes here
require "pry"

class Person


    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    #setting writers for these
    #  .clamp(min,max) helps to set limits
    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end 

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
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
        self.bank_account += salary
        "all about the benjamins"
    end 


    def take_bath 
        new_hygiene = @hygiene + 4
        self.hygiene=(new_hygiene) #need to put the "self" in front, because you need something to call the method"
        # binding.pry
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    
    def work_out
        dirty = @hygiene - 3
        self.hygiene=(dirty)
        new_happy = @happiness + 2
        self.happiness=(new_happy)
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        new_happy = @happiness + 3
        self.happiness=(new_happy)
        friend_happiness = friend.happiness + 3
        friend.happiness=(friend_happiness)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person,topic)
        if topic ==  "politics"
            my_happiness = @happiness - 2
            self.happiness=(my_happiness)
            their_happiness = person.happiness - 2
            person.happiness=(their_happiness)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            my_happiness = @happiness + 1
            self.happiness=(my_happiness)
            their_happiness = person.happiness + 1
            person.happiness=(their_happiness)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end 
    end 

end 


grace = Person.new("grace")

grace.take_bath