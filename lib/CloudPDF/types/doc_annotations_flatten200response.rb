# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsFlatten200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocAnnotationsFlatten200ResponseMeta }, optional: false, nullable: false
    end
  end
end
