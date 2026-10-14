# frozen_string_literal: true

module CloudPDF
  module Types
    class DocRedactionsApply200Response < Internal::Types::Model
      field :scope, -> { CloudPDF::Types::DocRedactionsApply200ResponseScope }, optional: false, nullable: false

      field :results, -> { Internal::Types::Array[CloudPDF::Types::DocRedactionsApply200ResponseResultsItem] }, optional: false, nullable: false

      field :removed_annotation_count, -> { Integer }, optional: false, nullable: false, api_name: "removedAnnotationCount"

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
