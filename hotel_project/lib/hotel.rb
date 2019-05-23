require_relative "room"

class Hotel
    def initialize(name,capacities)
        @name = name 
        @rooms = {}

        capacities.each do |room_name, capacity|
            @rooms[room_name] = Room.new(capacity)
        end

    end

    def name
       cap =  @name.split(" ")
       cap.each {|ele| ele.capitalize!}
       name = cap.join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(name)
        rooms.each_key do |key|
            if key == name
                return true
            end
            return false

        end
    end

    def check_in(person, room)
        if self.room_exists?(room)
            @rooms[room].add_occupant(person)
        else
            puts "sorry, room does not exist"
        end
    end

    def has_vacancy?
        # if all hotel room are full
        
        #call all room
        @rooms.each_key do |key|
            if key.room.full? #this aint working
                return false
            else 
                return true
            end
        end
    end

    def list_rooms
        puts @rooms
    end
            
        

    
    
end
