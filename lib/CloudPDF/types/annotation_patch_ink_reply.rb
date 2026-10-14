# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchInkReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationPatchInkReplyType }, optional: true, nullable: false
    end
  end
end
