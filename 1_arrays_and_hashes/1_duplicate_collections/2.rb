class HashSelector
  def initialize(hash)
    @hash = hash.dup
  end

  def meaningful_keys
    hash.select! { |k,v| k == :valid }
  end

  private

  attr_reader :hash
end

hash = {:invalid => :value, :valid => :another_value}
a = HashSelector.new(hash)

p a.meaningful_keys
p hash
