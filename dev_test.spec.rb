
require_relative 'dev_test'

RSpec.describe 'count the number of visits' do
  before do
    @str = " the quick brown fox / jumped over the lazy fox."
  end

  it 'counts words accurately' do
    expect(@str.total_words).to eq(9)
  end

  it 'Returns a hash that totals up the word usage' do
    expect(@str.word_list).to eq ({"the"=> 2,
                                  "quick" =>1,
                                  "brown" =>1,
                                  "fox" =>2,
                                  "jumped" =>1,
                                  "over" =>1,
                                  "lazy" =>1}
                                  )
  end
end

  describe 'find duplicates' do
    it 'returns duplicates from an array' do
      array = [0, 2, 1, 4]
      expect(array.find_duplicates).to eq([1])
    end
  end