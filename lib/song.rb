class Song
    #attr_accessor 
    @@artists = []
    @@count = 0 
    @@genres = []
    #@@genre_count = {}
    attr_reader :name, :artist, :genre

    
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count +=1
        @@artists << artist
        @@genres << genre 
        #@@genre_count[genre] += 1 

    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists = @@artists.uniq!
    end

    def self.genres 
        @@genres = @@genres.uniq!
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |i|
            if genre_count[i]
                genre_count[i] += 1 
            else 
                genre_count[i] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {} 
        @@artists.each do |i|
            if artist_count[i]
                artist_count[i] += 1
            else
                artist_count[i] = 1 
            end
        end
        artist_count
    end


            


        # new_hash = Hash.new(0)
        # key_array = @@genre_count.keys
        # puts "keyarray is #{key_array} genrecount is #{@@genre_count}"
        # key_array.each do |i|
        #     new_hash[i] += 1 
        #     puts "i is #{i} new hash is #{new_hash}"
        # end 
        # new_hash
    # end


        # @@genre_count.map do |key, value|
        # num = 0 
        # key_array.each do |key, num|
        #     if key_array.include?(key)
            # num +=1

                


        # uniq_keys = @@genres.keys.uniq!
        # uniq_keys.each do |uniq_key|
        #     uniq_key_count = 0
        #     key_array.each do |genre_key| 
        #         if genre_key == uniq_keys
        #             uniq_key_count += 1 

            
        


end




