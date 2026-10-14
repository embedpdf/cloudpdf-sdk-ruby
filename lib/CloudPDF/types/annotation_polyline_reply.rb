# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPolylineReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationPolylineReplyType }, optional: false, nullable: false
    end
  end
end
