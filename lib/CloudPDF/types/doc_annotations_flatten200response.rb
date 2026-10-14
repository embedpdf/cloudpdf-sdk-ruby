# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsFlatten200Response < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :usage, -> { CloudPDF::Types::DocAnnotationsFlatten200ResponseUsage }, optional: false, nullable: false

      field :results, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsFlatten200ResponseResultsItem] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
