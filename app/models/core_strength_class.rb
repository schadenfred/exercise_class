class CoreStrengthClass < ApplicationRecord
  belongs_to :facilitator, foreign_key: :facilitator_id, class_name: 'User'

  has_many :core_strength_classes_students
  has_many :students, through: :core_strength_classes_students, class_name: 'User'



end
