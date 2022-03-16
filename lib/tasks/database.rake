require 'faker'

namespace :database do

  desc "Fill the database with informations just to test the app"
  task fill: :environment do
    for i in 1..rand(10..20)
      date = Faker::Date.backward(days: 500)
      Article.create!(
        title: Faker::ChuckNorris.fact,
        author_id: rand(1..2),
        article_text: Faker::Lorem.paragraph(sentence_count: rand(2..7), supplemental: true),
        image_url: Faker::LoremFlickr.image(size: '1920x1080', search_terms: ['lorem', 'programming', 'cafe']),
        likes: rand(1..1000),
        created_at: date,
        updated_at: date
      )
    end
  end

end
