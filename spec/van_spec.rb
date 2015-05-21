require_relative '../lib/van'

describe Van do

  let(:bike) { Bike.new }
  let(:van) { Van.new(:capacity => 20) }

  def fill_van(van)
    20.times { van.load(Bike.new) }
  end

  it 'should be able to accept a bike' do
    bike = Bike.new
    van = Van.new

    expect(van.bike_count).to eq 0
    van.load(bike)
    expect(van.bike_count).to eq 1
  end

  it 'should be able to unload a bike' do
    van.load(bike)
    van.unload(bike)
    expect(van.bike_count).to eq 0
  end

  it 'should know when it is full' do
    expect(van.full?).not_to be true
    fill_van van
    expect(van.full?).to be true
  end

  it 'should not accept a bike if it is full' do
    fill_van van
    expect { van.load(bike) }.to raise_error RuntimeError
  end

end