# frozen_string_literal: true

module CloudPDF
  module Types
    class OutlineItemDraft < Internal::Types::Model
      field :title, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::PdfLinkTargetWritable }, optional: true, nullable: false

      field :color, -> { String }, optional: true, nullable: false

      field :bold, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
