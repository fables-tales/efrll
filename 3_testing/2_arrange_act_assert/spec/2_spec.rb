require "spec_helper"
require "securerandom"

class Collaborates
  def initialize(random)
    @random = random
  end

  def gimme
    random.hex
  end

  protected

  attr_reader :random
end

describe Collaborates do
  it "calls #hex on SecureRandom" do
    expect(SecureRandom).to receive(:hex)

    c = Collaborates.new(SecureRandom)
    c.gimme
  end

  it "calls #hex on it's rng" do
    random = Class.new do
      def hex
        @called_hex = true
      end

      def called_hex?
        @called_hex
      end
    end.new

    c = Collaborates.new(random)
    c.gimme

    expect(random.called_hex?).to be true
  end
end
