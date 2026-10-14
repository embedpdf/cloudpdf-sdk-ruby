# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationTextReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationTextReplyType }, optional: false, nullable: false
    end
  end
end
