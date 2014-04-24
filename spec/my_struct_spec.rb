require 'spec_helper'

describe MyStruct do 

  before :each do
    @my_struct = MyStruct.new({a:2, b:3, c:4})
  end

  it "returns a new my_struct object" do
    expect(@my_struct).to be_an_instance_of(MyStruct)
  end

  it "correct initializes with hash" do
    expect(@my_struct.a).to equal(2)
  end

  it "correct changes value" do
    @my_struct.a = 10
    expect(@my_struct.a).to equal(10)
  end

  it "correct adds new fields" do
    @my_struct.new_attr = 115
    expect(@my_struct.new_attr).to equal(115)
  end

end