# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftPolygonReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationDraftPolygonReplyType }, optional: true, nullable: false
    end
  end
end
