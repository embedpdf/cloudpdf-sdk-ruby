# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsUpdate200ResponseMetaCacheDelta < Internal::Types::Model
      field :previous_doc_version, -> { Integer }, optional: false, nullable: false, api_name: "previousDocVersion"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsUpdate200ResponseMetaCacheDeltaPagesItem] }, optional: false, nullable: false
    end
  end
end
