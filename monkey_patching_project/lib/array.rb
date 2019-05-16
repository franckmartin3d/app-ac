# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length > 0
            maximum = self.max
            mininimum = self.min
            diference = maximum - mininimum
            return diference
        else 
            return nil
        end
    end
    def average
        if self.length > 0
            average = (self.sum * 1.0) / self.length
            return average
        else
            return nil
        end
    end
    def median
        # bubble sort
        sorted_arr = self
        sorted = false
        
        while !sorted
            sorted = true
            (o..sorted_arr.length).each do |i|
                if sorted_arr[i] > sorted_arr[i + 1]
                    sorted_arr[i], sorted_arr[i + 1] = sorted_arr[i +1],sorted_arr[i]
                    sorted_arr = false
                end
            end
        end
        # find the midle
        middle = sorted_arr.length / 2
        p sorted_arr
        # if odd or even

        #odd find the index of the middle and return the value

        # if even find the middle of the 2 index and return the sum value /2.0




end
