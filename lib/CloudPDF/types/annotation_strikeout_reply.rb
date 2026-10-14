# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationStrikeoutReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationStrikeoutReplyType }, optional: false, nullable: false
    end
  end
end
