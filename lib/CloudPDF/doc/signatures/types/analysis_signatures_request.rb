# frozen_string_literal: true

module CloudPDF
  module Doc
    module Signatures
      module Types
        class AnalysisSignaturesRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :since_signature, -> { Integer }, optional: true, nullable: false, api_name: "since.signature"

          field :since_revision, -> { Integer }, optional: true, nullable: false, api_name: "since.revision"

          field :level, -> { CloudPDF::Doc::Signatures::Types::AnalysisSignaturesRequestLevel }, optional: true, nullable: false

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"
        end
      end
    end
  end
end
