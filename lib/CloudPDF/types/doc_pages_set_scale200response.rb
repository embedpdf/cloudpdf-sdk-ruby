# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetScale200Response < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :meta, -> { CloudPDF::Types::DocPagesSetScale200ResponseMeta }, optional: false, nullable: false
    end
  end
end
