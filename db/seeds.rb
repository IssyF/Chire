require 'faker'

#Booking.destroy_all
#Chef.destroy_all
#User.destroy_all
#Review.destroy_all

emma_user = User.create!(first_name: 'Emma', last_name: 'Whittle', email: "emma123@gmail.com", address: '5 Waldon Avenue', password: '123123')
francis_user = User.create!(first_name: 'Francis', last_name: 'Brown', email: "francis.brown@hotmail.co.uk", address: '65 Cherry Blossom Avenue', password: '123123')
george_user = User.create!(first_name: 'George', last_name: 'Rush', email: "george1992@gmail.com", address: '40 Kingsland Road', password: '123123')
ana_user = User.create!(first_name: 'Ana', last_name: 'Gilmore', email: "ana.gilmore@hotmail.com", address: '1 Fleet Street', password: '123123')
tony_user = User.create!(first_name: 'Tony', last_name: 'Piper', email: "tony1991@gmail.com", address: '541 Oxford Street', password: '123123')
tori_user = User.create!(first_name: 'Tori', last_name: 'White', email: "tori@gmail.com", address: '12 Wood End', password: '123123')

4.times do
  Chef.create!(
    user_id: User.all.sample.id,
    cuisine: Chef::CUISINES.sample,
    years_experience: rand(1..8),
    hourly_rate: rand(25..100)
  )
end

Booking.all.each do |book|
  review = Review.new(
    review_rating: rand(1..5),
    review_content: Faker::TvShows::GameOfThrones.quote,
    booking_id: book.id,
    chef_id: 32
  )
  review.save!
end
