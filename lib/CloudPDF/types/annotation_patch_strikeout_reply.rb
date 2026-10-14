# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchStrikeoutReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationPatchStrikeoutReplyType }, optional: true, nullable: false
    end
  end
end
