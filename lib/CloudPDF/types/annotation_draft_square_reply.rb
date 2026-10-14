# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftSquareReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationDraftSquareReplyType }, optional: true, nullable: false
    end
  end
end
