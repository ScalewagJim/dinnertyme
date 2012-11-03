# == Schema Information
#
# Table name: kitchens
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Kitchen < ActiveRecord::Base
  attr_accessible :name, :recipe_ids
  has_many :recipes
end
