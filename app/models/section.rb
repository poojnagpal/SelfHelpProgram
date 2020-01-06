class Section < ApplicationRecord
    belongs_to :user
    belongs_to :program


  # def add_default_image
  #   unless image.attached?
  #     image.attach(
  #       io: File.open(Rails.root.join('app', 'assets', 'images', 'no_image_available.jpg')),
  #       filename: 'no_image_available.jpg', content_type: 'image/jpg'
  #     )
  #       end
  #   end
    
    def next
        Section.where("id > ?", id).order(id: :asc).limit(1).first
    end

    def previous
        Section.where("id < ?", id).order(id: :desc).limit(1).first
    end

    def last
    end
    
end
