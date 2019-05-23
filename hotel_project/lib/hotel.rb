require_relative "room.rb"

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

    def check_in(person, room_name)
        if self.room_exists?(room_name)
           if  @rooms[room_name].add_occupant(person)
                puts "check in successful"
            else
                puts "sorry, room is full"
            end
        else
            puts "sorry, room does not exist"
        end
    end

    def has_vacancy?
        @rooms.value.any?{ |room|room.available_space > 0}
       
    end

    def list_rooms
        @rooms.each do |room_name,room|
            puts "#{room_name} #{room.available_space}"
        end
    end
            
        

    
    
end
