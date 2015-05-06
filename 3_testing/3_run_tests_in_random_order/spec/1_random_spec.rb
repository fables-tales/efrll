class HasClassState
  @@items = []

  def add
    @@items << 1
  end

  def item_count
    @@items.count
  end
end

describe HasClassState do
  it "has one thing after shovelling" do
    hc = HasClassState.new
    hc.add

    expect(hc.item_count).to eq(1)
  end

  it "has three items after shovelling" do
    hc = HasClassState.new
    hc.add
    hc.add

    expect(hc.item_count).to eq(3)
  end
end
