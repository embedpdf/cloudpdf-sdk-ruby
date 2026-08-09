# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsReset200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocFormsReset200ResponseMeta }, optional: false, nullable: false
    end
  end
end
