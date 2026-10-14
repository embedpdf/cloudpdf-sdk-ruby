# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationUnsupportedReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationUnsupportedReplyType }, optional: false, nullable: false
    end
  end
end
