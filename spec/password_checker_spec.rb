require "password_checker"

RSpec.describe PasswordChecker do
    context "if password is shorter than 8 characters" do
        it "fails" do
            pw_checker = PasswordChecker.new()
            pw = "PB&J"
            expect{pw_checker.check(pw)}.to raise_error "Invalid password, must be 8+ characters."
        end
    end

    context "password is of adequate length" do
        it "returns true" do
            pw_checker = PasswordChecker.new()
            pw = "peanut-butter-time"
            result = pw_checker.check(pw)
            expect(result).to eq true
        end
    end
end