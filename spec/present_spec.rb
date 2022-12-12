require "present"

RSpec.describe Present do
    context "contents were wrapped already" do
        it "fails" do
            present = Present.new()
            present.wrap("candy")
            expect{ present.wrap("toys")}.to raise_error "A contents has already been wrapped."
        end
    end

    context "no presents have been wraped yet" do
        it "fails" do
            present  =Present.new()
            expect{present.unwrap}.to raise_error "No contents have been wrapped."
        end
    end

    context "successful wrapping and unwrapping" do
        it "wraps and unwraps presents" do
            present = Present.new()
            present.wrap("candy and toys")
            result = present.unwrap
            expect(result).to eq "candy and toys"
        end
    end
end