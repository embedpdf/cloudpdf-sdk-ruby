# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftFreeTextReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationDraftFreeTextReplyType }, optional: true, nullable: false
    end
  end
end
