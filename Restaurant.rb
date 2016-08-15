#####create a restaurant menu displaying the menu bar on the terminal
####take the order from the customer and output the bill.

#add a gem to display the menu as table
exit = false
require 'terminal-table'

class Customer
  def initialize(food,orderNo,bill)
    @food= food
    @orderNo = orderNo
    @bill = bill
  end

  def order_number
    puts "How many would you like??"
    @orderNo = gets.chomp
  end

  def price_for_the_order(itemNumber)



  def bill
    puts "We are delighted to have you in Kamath's Kitchen"
    @bill = @oderno.to_i * item_price
class Restaurant
  def initialize
  end

  def menu
    menu =Hash.new
    rows=[]
    table =[]
    menu=Hash["paneer mutter" => 20, "papadam" => 2, "desser"=>5]
    menu.each do |food,price|
      rows << [food,price]
      table = Terminal::Table.new :title => "Kamath's Kitchen", :headings => ['food', 'price'], :rows => rows
    end
    puts table
  end
  
