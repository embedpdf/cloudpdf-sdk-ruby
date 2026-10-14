# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftCircleReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationDraftCircleReplyType }, optional: true, nullable: false
    end
  end
end
