# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesInsert < Internal::Types::Model
      field :resources, -> { CloudPDF::Types::ChangeOpPagesInsertResources }, optional: false, nullable: false

      field :position, -> { CloudPDF::Types::PagePosition }, optional: true, nullable: false
    end
  end
end
