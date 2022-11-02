# your code goes here
require 'pry'

class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = bank_account = 25
        @happiness = happiness =8
        @hygiene = hygiene =8 

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

    def happiness=(value)
        @happiness = value.clamp(0, 10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def clean?
        self.hygiene > 7
    end

    def happy? 
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness +=2
        self.hygiene -=3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [self, friend].each { |person| person.happiness += 3 }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic 
            
        when "politics"
        [self, friend].each { |person| person.happiness -= 2 }
        "blah blah partisan blah lobbyist"

        when "weather" 
        [self, friend].each { |person| person.happiness += 1 }
        "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end

    binding.pry
end