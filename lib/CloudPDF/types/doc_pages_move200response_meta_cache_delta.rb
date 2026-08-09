# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesMove200ResponseMetaCacheDelta < Internal::Types::Model
      field :previous_doc_version, -> { Integer }, optional: false, nullable: false, api_name: "previousDocVersion"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesMove200ResponseMetaCacheDeltaPagesItem] }, optional: false, nullable: false
    end
  end
end
