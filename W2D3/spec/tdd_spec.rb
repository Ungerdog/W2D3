describe "uniq" do
  let(:array) { [1, 2, 1, 3, 3] }
  let(:unique_array) { uniq(array.dup) }

  it "removes dups" do
    array.each do |i|
      expect(unique_array.count(i)).to eq(1)
    end
  end
end

describe "two_sum" do
  let(:array) { [-1, 0, 2, -2, 1] }

  it "finds zero-sum pairs" do
    expect(two_sum(array)).to eq([[0, 4], [2, 3]])
  end
end

describe "my_transpose" do
  it "transposes rows to col and back" do
    rows = [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ]

    expect(my_transpose(sq_matrix)).to eq( [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ] )
  end
end

describe "stock_picker" do
  it "picks the most profitable days" do
    expect(stock_picker([7, 2, 3, 1, 4, 5, 8])).to eq([3, 6])
  end
end
