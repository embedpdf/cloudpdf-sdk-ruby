# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsFlattenResponse < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :usage, -> { CloudPDF::Types::DocAnnotationsFlattenResponseUsage }, optional: false, nullable: false

      field :results, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsFlattenResponseResultsItem] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
