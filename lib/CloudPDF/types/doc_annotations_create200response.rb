# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsCreate200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocAnnotationsCreate200ResponseMeta }, optional: false, nullable: false
    end
  end
end
