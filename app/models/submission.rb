class Submission < ActiveRecord::Base
    belongs_to :community

    validates :title, length: {minimum: 5}
    validates :community, presence: true
    validates :url, :url => true
end
