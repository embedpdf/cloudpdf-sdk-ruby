# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationUnderlineReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationUnderlineReplyType }, optional: false, nullable: false
    end
  end
end
