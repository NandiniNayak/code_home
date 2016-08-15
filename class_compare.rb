class Tutor
  def initialize(name,type,difficulty)
    @name=name
    @type=type
    @difficulty=difficulty
  end
  def type
    @type
  end
  def name
    @name
  end
#   def compare(object)
#     if
#   end
end

tut1=Tutor.new("coder factory","ruby",:hard)
tut2=Tutor.new("coder factory",:ruby,:medium)
tut3=Tutor.new("coder factory",:javascript,:hard)

puts tut1.name
puts tut1.type
