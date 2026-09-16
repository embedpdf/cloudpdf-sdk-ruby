# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete200ResponseMetaCacheDeltaPagesItem < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :cache, -> { CloudPDF::Types::DocSignaturesComplete200ResponseMetaCacheDeltaPagesItemCache }, optional: false, nullable: false
    end
  end
end
