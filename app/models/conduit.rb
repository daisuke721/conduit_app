class Conduit < ApplicationRecord
  validate :title_error

  private

  def title_error
    if title.blank?
      errors.add(:base, "That title is required" )
    end
  end
end
