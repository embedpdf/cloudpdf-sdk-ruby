# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsSetValue200ResponseMetaCacheDelta < Internal::Types::Model
      field :previous_doc_version, -> { Integer }, optional: false, nullable: false, api_name: "previousDocVersion"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :pages, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsSetValue200ResponseMetaCacheDeltaPagesItem] }, optional: false, nullable: false
    end
  end
end
