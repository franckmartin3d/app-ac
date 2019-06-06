require "employee"

class Startup


    attr_reader :name, :funding, :salaries, :employees
    def initialize(name,funding,salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
       
        @salaries.each_key do |k|
            if k == title
                return true
            end
        end
        
        return false
        
    end

    def >(startup)
        if self.funding > startup.funding
            return true
        else
            return false
        end
    end

    def hire(name, title)
        if self.valid_title?(title)
            @employees  << Employee.new(name,title)
        else
            raise "title is invalid"       
        end
    end

    def size 
        @employees.length
    end

    def pay_employee(worker)
       payment =  @salaries[worker.title]
       if @funding > payment
            worker.pay(payment)
            @funding -= payment

       else
            raise "there is not enought @funding to pay emplee #{worker}"

       end

    end

    def payday
        @employees.each do |worker|
            pay_employee(worker)
        end
    end
# ________________________________________part 3_____________________________________________________________________

    def average_salary
        total = 0 

        @employees.each do |worker|
            total += @salaries[worker.title]
            # p @salaries[worker.title]
        end

        average = total / @employees.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(other_startup)
        @funding += other_startup.funding


        #add startup salary to our salary
     
        other_startup.salaries.each do |title,amount|
           if !@salaries.has_key?(title)
            @salaries[title] = amount
           end
        end
        


        #add the given startup's employees to our @employees 

        other_startup.employees.each do |worker|
            @employees << worker
        end

        #call Startup#close on the given startup
        other_startup.close

    end


    
    
end
