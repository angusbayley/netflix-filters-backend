namespace :db do
	desc "Fill db with sample data"
	task one_time_populate: :environment do
		Top250.create!(
			position: 1,
			name: "The Shawshank Redemption"
		)

		Top250.create!(
			position: 2,
			name: "The Godfather"
		)

		Top250.create!(
			position: 3,
			name: "The Godfather: Part II"
		)
	end
end