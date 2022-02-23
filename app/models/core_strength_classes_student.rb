class CoreStrengthClassesStudent < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :core_strength_class
end
