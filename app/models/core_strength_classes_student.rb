class CoreStrengthClassesStudent < ApplicationRecord
  belongs_to :core_strength_class
  belongs_to :student, class_name: 'User'
end
