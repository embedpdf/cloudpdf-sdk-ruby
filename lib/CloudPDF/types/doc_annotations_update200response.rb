# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsUpdate200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocAnnotationsUpdate200ResponseMeta }, optional: false, nullable: false
    end
  end
end
