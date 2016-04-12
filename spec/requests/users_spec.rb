require 'rails_helper'

# RSpec.describe "Users", :type => :request do
  # describe "GET /users" do
  #   it "works! (now write some real specs)" do
  #     get users_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
  # end
# describe User  do
#   before {@user=User.new(name:"o",email:"ololo@mail.com")}
#   subject{@user}
#   it {should respond_to(:name)}
#   it {should respond_to(:email)}
# end

# end
describe User do
     it "is valid with a name,email" do
         # user =FactoryGirl.create :user
       user=User.create(name:"olo1",email:"olo")
        expect(user).not_to be_valid
       end
     it "is valid with a name,email" do
       user =FactoryGirl.create :user
       # user=User.create(name:"olo2",email:"sasha@mail.ru")
       expect(user).to be_valid
     end
     it "is invalid without a name" do
      user = FactoryGirl.create :user
      user.valid?
      expect(user.errors[:name]).not_to include("can't be blank")
     end
     it "returns awasome name" do
      user =FactoryGirl.create :user
      expect(user.name).to eq "Awasome_"+user[:name]
       # puts user[:name]
      # puts user.name
     end

  end