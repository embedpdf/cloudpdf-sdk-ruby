# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationHighlightReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationHighlightReplyType }, optional: false, nullable: false
    end
  end
end
