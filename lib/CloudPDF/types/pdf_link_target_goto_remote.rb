# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfLinkTargetGotoRemote < Internal::Types::Model
      field :file, -> { String }, optional: false, nullable: false
    end
  end
end
