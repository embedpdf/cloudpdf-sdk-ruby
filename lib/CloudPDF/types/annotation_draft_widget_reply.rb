# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftWidgetReply < Internal::Types::Model
      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :type, -> { CloudPDF::Types::AnnotationDraftWidgetReplyType }, optional: true, nullable: false
    end
  end
end
