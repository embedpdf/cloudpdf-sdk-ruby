# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsImportData200ResponseMetaCacheDelta < Internal::Types::Model
      field :previous_doc_version, -> { Integer }, optional: false, nullable: false, api_name: "previousDocVersion"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :pages, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsImportData200ResponseMetaCacheDeltaPagesItem] }, optional: false, nullable: false
    end
  end
end
