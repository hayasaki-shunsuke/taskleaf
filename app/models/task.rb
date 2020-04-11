class Task < ApplicationRecord
  has_one_attached :image
  # before_validation :set_nameless_name
  validates :name, presence: true
  validates :name, length: { maximum: 30}
  validate :validate_name_not_including_comma

  belongs_to :user

  scope :recent, -> { order(created_at: :desc)}

  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at]
  end

  def self.ransackable_association(auth_object = nil)
    []
  end

  private

  # def set_nameless_name
  #   self.name =  '名前なし' if name.blank?
  # end

  def validate_name_not_including_comma
    errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
  end
end
