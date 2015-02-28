class HashSelector
  def initialize(hash)
    @hash = hash
  end

  def meaningful_keys
    hash.select! { |k,v| k == :valid }
  end

  private

  attr_reader :hash
end

a = HashSelector.new({:invalid => :value, :valid => :another_value})

p a.meaningful_keys
