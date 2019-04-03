data = {"chocolate things" => ["chocolate cake", "hot chocolate", "choc"], "liquids" => ["water", "hot chocolate", "cola", "juice"], "lollies" => ["skittles", "M&Ms", "licorice"]}
puts "The categories you can choose from are #{data.keys}. Please choose one of the categories"
user_choice = gets.chomp

if data.has_key?("#{user_choice}") == false
    user_choice_flag = true  #while loop flag condition to execute loop
    while user_choice_flag
        puts "Invalid option Please enter one of the following categories"
        user_choice = gets.chomp
            if data.has_key?("#{user_choice}") == true
                user_choice_flag = false
            end
    end
else 
    puts "Invalid option"

    while user_choice_flag
        puts "Invalid option Please enter one of the following categories"
        user_choice = gets.chomp
            if data.has_key?("#{user_choice}") == true
                user_choice_flag = false
            end
    end
    
end

puts "Please enter the maximum number of characters of the data you want to be shown"
max_length = gets.chomp.to_i

data.each {|key, value| 
    if user_choice == key
        data[user_choice].each{|element|
        if element.length <= max_length
            puts element
        end
        }

    end
}
