class MyStruct

  def initialize(hash = {})
    @fields = {}

    hash.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def method_missing(meth, *args)
    field = meth.to_s
    if field[-1] == "="
      @fields[field.chop] = args[0]
    else
      @fields[field]
    end
  end

end


my_struct = MyStruct.new({b:8, a:778})
my_struct.c = 7
puts my_struct.c
puts my_struct.a

