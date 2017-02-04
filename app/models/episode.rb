class Episode < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |episode|
				csv << episode.attributes.values_at(*column_names)
			end
		end
	end
end
