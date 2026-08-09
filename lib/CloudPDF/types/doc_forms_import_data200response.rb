# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsImportData200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocFormsImportData200ResponseMeta }, optional: false, nullable: false
    end
  end
end
