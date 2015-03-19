namespace :mm do 
	task :seed_photos => :environment do
		desc "Repopulates the Photo table"

	  Photo.delete_all

    categories = [:ceremony, :reception, :outtake]

	  categories.each do |category|
      files = Dir["public/images/photos/#{category}/*.jp*g"]
	    files.each do |filename|
	      p = Photo.new
	      p.file = File.open(filename)
	      p.category = category
	      p.save
	    end
	  end
	end
end