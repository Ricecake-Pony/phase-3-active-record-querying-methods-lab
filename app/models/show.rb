class Show < ActiveRecord::Base
    
    def self.highest_rating
        # Show.maximum('rating') works but why

        maximum(:rating) 

        # Show.maximum(rating:) Doesn't work.. Let's think about why that is. This syntax (rating:) is opening a value(atttribute is the technically term?) but it's waiting for an argument for it to work within this method.? That's my guess. But why are the other two methods working? especially making rating a stirng? Is this a way to access values using quotes?..

    end

    def self.most_popular_show
        find_by(rating: Show.highest_rating)
    end

    def self.lowest_rating
        minimum(:rating)
    end

    def self.least_popular_show
        find_by(rating: Show.lowest_rating)
        # Why does the instance show here instead of just the integer for that show?
    end

    def self.ratings_sum
        all.sum(:rating)
    end
    
    def self.popular_shows
        self.all.filter{ |show| show.rating > 5}
    end

    def self.shows_by_alphabetical_order
        all.order(:name)
    end
end

# class Song < ActiveRecord::Base

#     def self.popular_songs
#         Song.all.map{ |song| song.rating > 5}
#     end
#     # => [true, true, false, false]

#     def self.popular_songs
#         self.all.where( "rating > 5")
#     end
#     # => #<Song id: 1, name: "my Way", rating: 10>,
#     #    #<Song id: 2, name: "Walk it Out", rating: 7>]
# end
