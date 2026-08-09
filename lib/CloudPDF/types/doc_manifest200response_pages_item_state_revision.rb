# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifest200ResponsePagesItemStateRevision < Internal::Types::Model
      field :doc_session_id, -> { String }, optional: false, nullable: false, api_name: "docSessionId"

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :generation, -> { Integer }, optional: false, nullable: false
    end
  end
end
