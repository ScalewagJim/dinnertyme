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

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
