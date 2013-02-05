require 'spec_helper'
describe User do
    before(:each) do
        @attr = {
            :name => "Example User",
            :email => "user@example.com",
            :password => "foobar",
            :password_confirmation => "foobar"
        }
    end
end
describe "password validations" do
    it "should require a password" do
        User.new(@attr.merge(:password => "", :password_confirmation => "")).
        should_not be_valid
    end
end

