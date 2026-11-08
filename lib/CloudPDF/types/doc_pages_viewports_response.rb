# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesViewportsResponse < Internal::Types::Model
      field :viewports, -> { Internal::Types::Array[CloudPDF::Types::PageMeasurementViewport] }, optional: false, nullable: false
    end
  end
end
