require "forwardable"

class RaisingHash
  extend Forwardable
  include Enumerable

  def initialize(hash)
    @hash = hash
  end

  def_delegators(:@hash, :[], :[]=, :delete, :each,
                 :keys, :values, :length,
                 :empty?, :has_key?)
end

r = RaisingHash.new(:a => :b)

r[:a]
r[:b]

p r.respond_to?(:include)
