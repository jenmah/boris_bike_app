require_relative '../lib/bike'

#We're describing the functionality of a specific class, Bike.
describe Bike do

  #The code below instantiates a new instance of the Bike class, and does the same thing as putting "bike = Bike.new" into each it/end thingy
  let(:bike) { Bike.new }
  #This is a specific feature or behaviour that we EXPECT to have
  it 'should not be broken when created' do
    expect(bike.broken?).to be false 
  end 

  it 'should be able to break' do
    bike.break 
    expect(bike.broken?).to be true
  end

  it 'should be able to get fixed' do
    bike.break
    bike.fix
    expect(bike.broken?). to be false
  end

end