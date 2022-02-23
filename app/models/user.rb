class User < ApplicationRecord
  has_many :core_strength_classes_students
  has_many :core_strength_classes, through: :core_strength_classes_students
end
