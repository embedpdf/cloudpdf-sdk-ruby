# frozen_string_literal: true

module CloudPDF
  module Types
    class OutlineItem < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::OutlineItemRef }, optional: false, nullable: false

      field :parent, -> { CloudPDF::Types::OutlineItemRef }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::PdfLinkTarget }, optional: false, nullable: true

      field :action, -> { CloudPDF::Types::PdfActionTree }, optional: false, nullable: true

      field :open, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :color, -> { String }, optional: false, nullable: true

      field :bold, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
