class Lesson < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :category }
  validates :category, presence: true

  enum category: { Vim: 0, Vimrc: 1, Option: 2 }
end