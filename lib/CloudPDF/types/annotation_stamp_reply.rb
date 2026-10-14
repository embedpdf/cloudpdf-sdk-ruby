# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationStampReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationStampReplyType }, optional: false, nullable: false
    end
  end
end
