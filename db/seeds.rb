puts 'destroying existing articles...'
Article.destroy_all

puts 'creating 10 fake articles...'
10.times do
  Article.create!(
    title: Faker::TvShows::TwinPeaks.location,
    content: Faker::TvShows::TwinPeaks.quote,
    name: Faker::TvShows::TwinPeaks.character
  )
end

puts 'added articles complete'
