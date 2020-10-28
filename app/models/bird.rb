class Bird < ApplicationRecord

  # validates(:name, { presence: true })
  validates :name, :color, :age, presence: true
  validates :name, uniqueness: true
  validates :age, numericality: { greater_than: 0 }

end
