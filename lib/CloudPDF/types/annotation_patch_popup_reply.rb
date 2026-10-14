# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPopupReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationPatchPopupReplyType }, optional: true, nullable: false
    end
  end
end
