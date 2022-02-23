class CoreStrengthClass < ApplicationRecord
  has_many :core_strength_classes_students
  has_many :students, through: :core_strength_classes_students, class_name: 'User'
end
