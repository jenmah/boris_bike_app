require_relative '../lib/bike'

#We're describing the functionality of a specific class, Bike.
describe Bike do
  #This is a specific feature or behaviour that we EXPECT to have
  it 'should not be broken when created' do
    bike = Bike.new #Instantiate a new instance of the Bike class
    expect(bike.broken?).to be false 
  end 
end