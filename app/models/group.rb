class Group < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :task

    validates :group_name, presence: {message: 'は必須項目です'}
    validates :group_name, uniqueness: {message: 'は既に存在しています'}
end
