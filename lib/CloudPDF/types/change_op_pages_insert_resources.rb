# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesInsertResources < Internal::Types::Model
      field :source, -> { String }, optional: false, nullable: false
    end
  end
end
