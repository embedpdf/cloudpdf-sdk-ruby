# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchFreeTextReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationPatchFreeTextReplyType }, optional: true, nullable: false
    end
  end
end
