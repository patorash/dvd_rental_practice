module DvdRentalDefinition
  extend ActiveSupport::Concern

  included do
    self.table_name = self.name.underscore
    self.primary_key = "#{self.name.underscore}_id"
  end
end