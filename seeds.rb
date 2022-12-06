# puts "Clearing Database"
# Show.destroy_all
# puts "Database Cleared"

puts "Creating Shows"
Show.create(name: "How I met your Mother", network: "FOX", day: "Monday", rating: 10, season: "Spring")
Show.create(name: "Cops", network: "CNN", day: "Tuesday", rating: 6, season: "Summer")
Show.create(name: "Ink Masters", network: "MTV", day: "Wednesday", rating: 7, season: "Fall")
Show.create(name: "Is that Cake?", network: "TBS", day: "Thursday", rating: 5, season: "Winter")
Show.create(name: "Fantasy Factory", network: "FOX", day: "Friday", rating: 8, season: "Spring")
puts "Shows are LIVE!"