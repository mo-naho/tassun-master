class Task < ApplicationRecord
    belongs_to :group
    belongs_to :user
    
    validates :main, presence: {message: 'は必須項目です'}
    validates :start_time, presence: {message: 'は必須項目です'}
    validates :group_id, presence: {message: 'は必須項目です'}
    validates :user_id, presence: {message: 'は必須項目です'}

end
