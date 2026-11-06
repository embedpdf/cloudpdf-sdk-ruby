# frozen_string_literal: true

module CloudPDF
  module Types
    class DocRedactionsApplyResponse < Internal::Types::Model
      field :scope, -> { CloudPDF::Types::DocRedactionsApplyResponseScope }, optional: false, nullable: false

      field :results, -> { Internal::Types::Array[CloudPDF::Types::DocRedactionsApplyResponseResultsItem] }, optional: false, nullable: false

      field :removed_annotation_count, -> { Integer }, optional: false, nullable: false, api_name: "removedAnnotationCount"

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
