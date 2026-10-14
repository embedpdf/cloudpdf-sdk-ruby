# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfLinkTargetGoto < Internal::Types::Model
      field :destination, -> { CloudPDF::Types::PageDestination }, optional: false, nullable: false
    end
  end
end
