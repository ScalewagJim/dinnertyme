# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  steps      :text
#  photo      :string(255)
#  serves     :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  kitchen_id :integer
#

class Recipe < ActiveRecord::Base
  attr_accessible :name, :photo, :rating, :serves, :steps, :kitchen_id, :ingredient_ids
  belongs_to :kitchen
  has_and_belongs_to_many :ingredients
end
