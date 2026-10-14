# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationRedactReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationRedactReplyType }, optional: false, nullable: false
    end
  end
end
