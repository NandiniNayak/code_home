#####create a restaurant menu displaying the menu bar on the terminal
####take the order from the customer and output the bill.

#add a gem to display the menu as table
exit = false
require 'terminal-table'

class Customer
  def initialize(food,orderNo,bill)
    @food= food
    @orderNo = orderNo
    @bill = 0
  end
  attr_accessor :food,:orderNo,:bill

  def menu
   system "cls"
    @menu =Hash.new
    rows=[]
    table =[]
    @menu=Hash["1.paneer mutter" => 20,"2.Birayani" =>15 , "3.papadam" => 2, "4.Gulab jamoon"=>5]
    @menuList = Hash[1 => 20, 2=>15, 3 => 2, 4 =>5]
    @menu.each do |food,price|
      rows << [food,price]
      table = Terminal::Table.new :title => "Kamath's Kitchen", :headings => ['food', 'price'], :rows => rows
    end
    puts "\e[33mWelcome to Kamath's Kitchen: Happy to serve you - Kindly place your order by entering the number against the food item\e[0m"
    puts "\e[32menter 5 to get your bill\e[0m"
    puts table
  end

  def orderNumber
    puts "How many would you like??"
    @orderNo = gets.chomp
  end

  def priceForTheOrder(itemNumber)
    @itemNumber = itemNumber
    @priceForTheOrder = @menuList[@itemNumber]
  end

  def orderbill
    @bill =  @bill +(@orderNo.to_i*@priceForTheOrder.to_i)
  end

  def placeOrder(command)
    orderNumber
    priceForTheOrder(command)
    orderbill
  end
end

customer1 = Customer.new("","","")

until exit do
  customer1.menu
  command = gets.chomp.to_i
  case command
     when 1
        customer1.orderNumber
        customer1.priceForTheOrder(command)
        customer1.orderbill
      when 2
        customer1.orderNumber
        customer1.priceForTheOrder(command)
        customer1.orderbill
      when 3
        customer1.orderNumber
        customer1.priceForTheOrder(command)
        customer1.orderbill
      when 4
        customer1.orderNumber
        customer1.priceForTheOrder(command)
        customer1.orderbill
      when 5
        puts "We are delighted to have you at Kamath's Kitchen  - here is your bill
        #{customer1.bill}$"
        exit = true
      else
        puts " invalid entry please try again"
  end
end
