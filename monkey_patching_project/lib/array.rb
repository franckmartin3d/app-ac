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
    def median_sort(arr)
        # bubble sort
        sorted_arr = arr
        sorted = false
        while !sorted
    
            sorted = true
    
            (0...(arr.length - 1)).each do |i|
                if arr[i] > arr[i + 1]
                    arr[i], arr[i + 1] = arr[i +1],arr[i]
                    sorted = false
                end
            end
        end
        # p sorted_arr
        return sorted_arr
    end
        # find the midle index
    def median_middle(arr)
    
        # p arr
        # puts
    
        even_arr = []
    
        if arr.length.odd?
            # p "its odd"
            # puts
            middle_index = (arr.length / 2)
            # p middle_index
            return middle_index
        else
            # p "its even"
            # puts
            middle1= (arr.length/2) - 1
            middle2= (arr.length/2)
            even_arr << middle1
            even_arr << middle2
            # p even_arr
            return even_arr
    
            #formula
            #middle_index = (middle1 + middle2) / 2
        end
    
      
    end
        # if odd or even
        # if sorted_arr.length.even
        # # if even find the middle of the 2 index and return the sum value /2.0
        # #odd find the index of the middle and return the value
    def median
        
        arr = self
        if arr.length <1
            return nil
        else
            sorted_array = median_sort(arr)
            if sorted_array.length.even?
                even_working_index = median_middle(sorted_array)
                # select the value of the 2 index
                median = (sorted_array[even_working_index[0]] + sorted_array[even_working_index[1]]) / 2.0
                # p "its even"
                # puts
                # p median
                return median
        
            else
                odd_index = median_middle(sorted_array)
                # p "odd_index_ median"
                # puts
                # p sorted_array[odd_index]
                return sorted_array[odd_index]
        
            end
        end
    end

    




end
