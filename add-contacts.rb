def ask_question(question, kind='string')
    print question + ' '
    answer = gets.chomp
    if kind == 'number' 
        answer = answer.to_i 
    end
 return answer
end

def add_contact
    contact = {"name" => "", "phone_numbers" => []}
    contact['name'] = ask_question('What is the contact\'s name?')
    answer = ''
    while answer != 'n'
        answer = ask_question('Do you want to add a phone number? (y/n)')
        if answer == 'y'
            phone_num = ask_question('What is your number?')
            contact['phone_numbers'].push(phone_num)
        elsif answer == 'n'
            puts "Okay, then."
        else 
            puts "Invalid input!"
        end
    end
    return contact
end

def add_separator(hyphen = '-')
    return hyphen * 80
end


contact_list = []
answer = ''

while answer != 'n'
    contact_list.push(add_contact())
    answer = ask_question('Would you like to add another contact?')
end
puts add_separator
contact_list.each {|contact|
    print "\t\tName: #{contact['name']}\t\t"
    if contact['phone_numbers'].length > 0
        contact['phone_numbers'].each {|number|
        puts "Phone: #{number}"
    }
end
        
}