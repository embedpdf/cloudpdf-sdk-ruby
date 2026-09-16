# frozen_string_literal: true

module CloudPDF
  module Doc
    module Versions
      module Types
        class AnalysisVersionsRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :sha, -> { String }, optional: false, nullable: false

          field :since_signature, -> { Integer }, optional: true, nullable: false, api_name: "since.signature"

          field :since_revision, -> { Integer }, optional: true, nullable: false, api_name: "since.revision"

          field :level, -> { CloudPDF::Doc::Versions::Types::AnalysisVersionsRequestLevel }, optional: true, nullable: false

          field :until_, -> { Integer }, optional: true, nullable: false, api_name: "until"

          field :policy, -> { Integer }, optional: true, nullable: false

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"
        end
      end
    end
  end
end
