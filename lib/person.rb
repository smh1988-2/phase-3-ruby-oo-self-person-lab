# your code goes here
require "pry"

class Person
    attr_reader = :name
    attr_accessor = :bank_account, :happiness, :hygiene

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # getter methods
    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def happiness
        @happiness
    end

    def hygiene
        @hygiene
    end

    def bank_account=(value)
        @bank_account += value
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene= @hygiene - 3
        self.happiness= @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        Person.new(friend)
        self.happiness= @happiness + 3
        friend.happiness= @happiness + 3
        "Hi Felix! It's Stella. How are you?"
        binding.pry
    end

    def start_conversation(friend, topic)
        Person.new(friend)
        if topic == politics
            self.happiness= @happiness - 2
            friend.happiness= @happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == weather
            self.happiness= @happiness + 1
            friend.happiness= @happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
    
end
#me = Person.new("Sean")
