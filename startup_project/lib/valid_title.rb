def valid_title?(title, hash)
    result = true
    hash.each_key do |k|
        puts k
        if k != title
            puts "result of comaparison"
            puts "#{k} is not equal to #{title}"
            result = false
            
        else 
            puts "#{k} is  equal to #{title}"
        end
    end
    
    p result
    
end





salaries = {
    "CEO"=>5000,
    "CTO"=>4200,
    "Software Engineer"=>3000,
    "Junior Developer"=>2400
  }

valid_title?("CEO",hash = {
    "CEO"=>5000,
    "CTO"=>4200,
    "Software Engineer"=>3000,
    "Junior Developer"=>2400
  })