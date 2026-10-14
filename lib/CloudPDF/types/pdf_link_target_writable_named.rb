# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfLinkTargetWritableNamed < Internal::Types::Model
      field :name, -> { CloudPDF::Types::PdfLinkTargetWritableNamedName }, optional: false, nullable: false
    end
  end
end
