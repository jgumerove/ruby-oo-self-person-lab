# your code goes here
class Person
   attr_reader :name
   attr_accessor :bank_account, :happiness, :hygiene
   
    
    def initialize(name)
        @name = name
        @bank_account = 25  
        @happiness = 8
        @hygiene = 8   
    end

    def happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
        @happiness
    end

    def hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
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
   
    def call_friend(person_instance)
        self.happiness += 3 #note that self here refers back to this instance 
        person_instance.happiness += 3
        return "Hi #{person_instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person_conversation, topic)
        case topic
        
        when "politics"
            self.happiness -= 2
            person_conversation.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            person_conversation.happiness += 1
            return "blah blah sun blah rain"
        when "programming"
            return "blah blah blah blah blah"


        end
    end


end
