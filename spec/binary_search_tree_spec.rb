require 'binary_search_tree'

describe BinarySearchTree do
  let(:bst) { BinarySearchTree.new }

  describe '#initialize' do
    it 'sets the root_movie and recursive_counter attributes' do
      expect(bst.root_movie).to be_nil
      expect(bst.recursive_counter).to eq(0)
    end
  end

  describe '#insert' do
    it 'inserts a movie and returns the number of recursive calls' do
      expect(bst.insert(93, 'The Shawshank Redemption')).to eq(0)
      expect(bst.insert(87, 'Pulp Fiction')).to eq(1)
      expect(bst.insert(95, 'Inception')).to eq(1)
      expect(bst.insert(80, 'The Dark Knight')).to eq(2)
    end

    it 'correctly builds the binary search tree' do
      bst.insert(93, 'The Shawshank Redemption')
      bst.insert(87, 'Pulp Fiction')
      bst.insert(95, 'Inception')
      bst.insert(80, 'The Dark Knight')

      root = bst.root_movie
      expect(root.score).to eq(93)
      expect(root.left.score).to eq(87)
      expect(root.right.score).to eq(95)
      expect(root.left.left.score).to eq(80)
    end
  end
end
