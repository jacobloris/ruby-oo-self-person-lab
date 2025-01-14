# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene, :happiness
    def initialize(name_arg)
        @name = name_arg
        @bank_account = 25
        @hygiene = 8
        @happiness= 8
    end

    def happiness
        if @happiness < 0 
            @happiness = 0 
        elsif @happiness > 10
            @happiness = 10
        else 
            @happiness
        end
    end

 def hygiene
     @hygiene = 0 if @hygiene < 0 
     @hygiene = 10 if @hygiene > 10
     @hygiene
    end

def happy?
    @happiness > 7
end

def clean?
    @hygiene > 7
end

def get_paid(salary)
    self.bank_account += salary 
    return "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person , topic)
    if topic == "politics"
        person.happiness -= 2
        self.happiness -= 2 
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        person.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
end

end