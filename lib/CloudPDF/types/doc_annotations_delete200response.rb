# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsDelete200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocAnnotationsDelete200ResponseMeta }, optional: false, nullable: false
    end
  end
end
