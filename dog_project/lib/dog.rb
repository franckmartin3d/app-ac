class Dog

    def initialize(name, breed, age, bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end
    def age=(number)
        @age = number
    end

    def bark

        if @age <= 3
            return @bark.downcase

        else
           return @bark.upcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def  favorite_food?(item)
        arr = @favorite_foods
        item.downcase!


        arr.each do |ele|
            ele.downcase!
          if item.include?(ele)
            return true
          end
        end
        return false
    end

end
