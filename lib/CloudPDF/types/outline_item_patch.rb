# frozen_string_literal: true

module CloudPDF
  module Types
    class OutlineItemPatch < Internal::Types::Model
      field :title, -> { String }, optional: true, nullable: false

      field :target, -> { CloudPDF::Types::PdfLinkTargetWritable }, optional: true, nullable: false

      field :color, -> { String }, optional: true, nullable: false

      field :bold, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :open, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
