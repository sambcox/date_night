require 'movie'

describe Movie do
  let(:title) { 'The Shawshank Redemption' }
  let(:score) { 93 }
  let(:movie) { Movie.new(title, score) }

  describe '#initialize' do
    it 'sets the title and score attributes' do
      expect(movie.title).to eq(title)
      expect(movie.score).to eq(score)
    end

    it 'initializes left and right attributes to nil' do
      expect(movie.left).to be_nil
      expect(movie.right).to be_nil
    end
  end

  describe '#return_information' do
    it 'returns a hash with the title and score' do
      expected_info = { title => score }
      expect(movie.return_information).to eq(expected_info)
    end
  end
end