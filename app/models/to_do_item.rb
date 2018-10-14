class ToDoItem < ApplicationRecord
  include RailsSortable::Model
  set_sortable :sort
  
  validates :name, presence: true
  belongs_to :user
  belongs_to :category, optional: true
end
