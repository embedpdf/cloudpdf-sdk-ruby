# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsertBlank200ResponseLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
