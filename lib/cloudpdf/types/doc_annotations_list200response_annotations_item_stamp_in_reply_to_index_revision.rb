# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemStampInReplyToIndexRevision < Internal::Types::Model
      field :doc_session_id, -> { String }, optional: false, nullable: false, api_name: "docSessionId"

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :generation, -> { Integer }, optional: false, nullable: false
    end
  end
end
