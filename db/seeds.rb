Post.delete_all

avatars = %w(
https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/8_avatar-512.png
https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/4_avatar-512.png
https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/3_avatar-512.png
https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/9_avatar-512.png
https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/5_avatar-512.png
)

10.times do
  Post.create!(title: Faker::Lorem.sentence(3), url: "http://url-bidon.com", votes: rand(0..4), avatar_url: avatars.sample)
end

