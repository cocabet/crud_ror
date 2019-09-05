class Post < ApplicationRecord
    has_many :comments
    
    validates :title, presence: true
    validates :content, presence: true

    def capitalize_title
        self.title = self.title.capitalize
    end
end
