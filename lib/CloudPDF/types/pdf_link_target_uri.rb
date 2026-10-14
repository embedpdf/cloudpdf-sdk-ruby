# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfLinkTargetURI < Internal::Types::Model
      field :uri, -> { String }, optional: false, nullable: false
    end
  end
end
