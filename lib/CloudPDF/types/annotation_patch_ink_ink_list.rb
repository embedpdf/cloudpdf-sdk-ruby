# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchInkInkList < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { Internal::Types::Array[Internal::Types::Array[CloudPDF::Types::AnnotationPatchInkInkListZeroItemItem]] }

      member -> { Internal::Types::Array[Internal::Types::Array[CloudPDF::Types::AnnotationPatchInkInkListOneItemItem]] }
    end
  end
end
