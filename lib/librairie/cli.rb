class Librairie::CLI

    def call
        list_books
        menu
        goodbye
    end

     def list_books
         puts "Take a book on wattpad:"
         @books = Librairie::Story.today
         @books.each.with_index(1) do |book, index|
            puts "#{index}.#{book.name}"
            puts  "#{book.author}" 
        end
     end
     
     def menu
        input = nil
        while input != "exit"
            puts "Select your item and get more detail on it or type list to see the books again or  type exit to continue:"
        input = gets.strip.downcase 
            
        count_it = Librairie::Story.today.size 
        if input.to_i > 0 && input.to_i <= count_it
            
        new_book= @books[input.to_i-1]
            puts "#{new_book.name}-#{new_book.author}" 
        elsif input == "list"
            list_books
        else
            puts "Not sure what you want, type list or exit"
        end 
    end 
     end

     def goodbye 
        puts "See you tomorrow for more  story!!"
     end
     
     
    end