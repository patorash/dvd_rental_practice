class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.all_models
    model_names = ActiveRecord::Base.connection.tables.map(&:classify).sort
    model_names.map { |model_name| Object.const_get(model_name) rescue nil }.compact
  end
end
