require "spec_helper"

class Tested
  def initialize(collaborator)
    @collaborator = collaborator
  end

  def foo
    if @collaborator.complex_method > 0.5
      "high"
    else
      "low"
    end
  end
end

RSpec.describe Tested do
  subject(:tested) { Tested.new(collaborator) }

  let(:collaborator) { spy(:complex_method => 1) }

  describe "#foo" do
    context "When the random value is high" do
      it "calls the complex method on the collaborator" do
        tested.foo

        expect(collaborator).to have_received(:complex_method).with(no_args)
      end
    end
  end
end
