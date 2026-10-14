# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftHighlightReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationDraftHighlightReplyType }, optional: true, nullable: false
    end
  end
end
