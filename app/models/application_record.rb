class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end
end
