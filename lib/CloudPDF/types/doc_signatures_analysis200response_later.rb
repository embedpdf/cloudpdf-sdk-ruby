# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysis200ResponseLater < Internal::Types::Model
      field :revision_count, -> { Integer }, optional: false, nullable: false, api_name: "revisionCount"

      field :undone_object_numbers, -> { Internal::Types::Array[Integer] }, optional: false, nullable: false, api_name: "undoneObjectNumbers"
    end
  end
end
