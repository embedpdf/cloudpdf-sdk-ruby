# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftUnderlineReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationDraftUnderlineReplyType }, optional: true, nullable: false
    end
  end
end
