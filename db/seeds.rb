require 'faker'

def seed_user
  10.times do
	@user = User.create!(name: Faker::Name.first_name)
  end
end

def seed_pin
	10.times do
	  @pin = Pin.create!(user: @user, url: Faker::Internet.url('pinterest.com'))
	end
end

def seed_comment
	15.times do
	  @comment = Comment.create!(user: @user, pin: @pin, content: Faker::Hipster.sentence)
	end
end

def seed_all
	seed_user
	seed_pin
	seed_comment
end

seed_all

