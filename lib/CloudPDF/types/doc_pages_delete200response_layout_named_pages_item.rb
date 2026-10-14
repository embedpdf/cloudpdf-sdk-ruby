# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesDelete200ResponseLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::DocPagesDelete200ResponseLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
