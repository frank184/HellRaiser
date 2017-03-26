class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.new(attributes = {})
    if attributes.is_a?(Array)
      attributes.collect { |attr| super(attr) }
    else
      super
    end
  end
end
