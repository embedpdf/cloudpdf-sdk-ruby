# frozen_string_literal: true

module CloudPDF
  module Doc
    module Types
      class HeadDocRequest < Internal::Types::Model
        field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

        field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"
      end
    end
  end
end
