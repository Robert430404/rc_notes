class Note < ActiveRecord::Base
  belongs_to :users

  validates :title, presence: true,
                    length: {
                      minimum: 5
                    }
end
