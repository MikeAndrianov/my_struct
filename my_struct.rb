module HashAccessor
  
  def hash_accessor(hash_name, *key_names)
    key_names.each do |key_name|

      define_method key_name do
        instance_variable_get("@#{hash_name}")[key_name]
      end

      define_method "#{key_name}=" do |value|
        instance_variable_get("@#{hash_name}")[key_name] = value
      end

    end
  end

end


class MyStruct
	extend HashAccessor

	hash_accessor :hash, :a, :b, :c
	
	def initialize(hash = {})
		@hash = hash
	end

end

my_struct = MyStruct.new({a:2, b:3, c:4})
puts my_struct.c = 7