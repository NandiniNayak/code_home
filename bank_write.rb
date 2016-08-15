def create
   @att = ["name", "email", "acc", "address", "phone", "PIN"]
   @deat = []

   @att.each do |req|
     system "cls"
     puts "\e[1;41;33m            Account Creation              \e[1;0;0m"
     puts "\e[31mPlease enter your #{req}: \e[0m"
     det = gets.chomp
     @deat << det
   end
   filename = "Accounts.txt"
   acc = open(filename, "a+")
   acc.write("#{@deat[0]} = Bank.new(\"#{@deat[0]}\", \"#{@deat[1]}\", #{@deat[2]}, \"#{@deat[3]}\", \"#{@deat[4]}\", #{@deat[5]})\n")
   acc.rewind
   acc.close
  end
