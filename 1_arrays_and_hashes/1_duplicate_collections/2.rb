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
