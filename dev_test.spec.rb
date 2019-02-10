require_relative 'dev_test'

RSpec.describe 'Duplicate removal' do
  it 'Removes duplicates from an array' do
    arr = [1, 3, 4, 1, 4]
    expect(arr.remove_duplicates).to eq[1, 4])
  end
end