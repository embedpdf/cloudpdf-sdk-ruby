# frozen_string_literal: true

module CloudPDF
  module Types
    module AnnotationFreeTextIntent
      extend CloudPDF::Internal::Types::Enum

      FREE_TEXT = "free-text"
      FREE_TEXT_CALLOUT = "free-text-callout"
      FREE_TEXT_TYPEWRITER = "free-text-typewriter"
    end
  end
end
