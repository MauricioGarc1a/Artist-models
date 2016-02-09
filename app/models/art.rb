class Art < ActiveRecord::Base
  has_many genres:
  has_many artists:
end
