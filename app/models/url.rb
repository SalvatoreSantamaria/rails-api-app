class Url < ApplicationRecord
  validates_format_of :address, :with => URI::regexp(%w(http https)), :on => :create
end
