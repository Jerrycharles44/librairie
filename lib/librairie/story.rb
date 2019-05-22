require 'pry'
class Librairie::Story
    attr_accessor :name, :author, :isbn
     def self.today
         
    self.scrape_books
    end

    def self.scrape_books
       books=[]
       books << self.scrape_wattpad
       books << self.scrape_wattpad1
       books << self.scrape_wattpad2
       books << self.scrape_wattpad3
       books
    end


    def self.scrape_wattpad
        doc=Nokogiri::HTML(open("https://www.babelio.com/livres/Besson-Dictionnaire-de-la-fantasy/1084558"))
        book=self.new
        book.name= doc.search(".livre_header_con").css("h1").text.strip
        book.author= doc.search("span").css(".livre_auteurs").text.strip
        book.isbn= doc.search(".livre_refs.grey_light").text.strip
        book
    end
    
    def self.scrape_wattpad1
        doc=Nokogiri::HTML(open("https://www.babelio.com/auteur/Neil-Gaiman/4980"))
        book=self.new
        book.name= doc.search(".livre_header_con").css("h1").text.strip
        book.author= doc.search("span").css(".livre_auteurs").text.strip
        book.isbn= doc.search(".livre_refs.grey_light").text.strip
        book
    end

    def self.scrape_wattpad2
        doc=Nokogiri::HTML(open("https://www.babelio.com/livres/Abel-couter-le-noir/1142608"))
        book=self.new
        book.name= doc.search(".livre_header_con").css("h1").text.strip
        book.author= doc.search("span").css(".livre_auteurs").text.strip
        book.isbn= doc.search(".livre_refs.grey_light").text.strip
        book
    end

    def self.scrape_wattpad3
        doc=Nokogiri::HTML(open("https://www.babelio.com/livres/Abel-couter-le-noir/1142608"))
        book=self.new
        book.name= doc.search(".livre_header_con").css("h1").text.strip
        book.author= doc.search("span").css(".livre_auteurs").text.strip
        book.isbn= doc.search(".livre_refs.grey_light").text.strip
        book
    end
    # binding.pry
 end