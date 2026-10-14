# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationSquareReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationSquareReplyType }, optional: false, nullable: false
    end
  end
end
