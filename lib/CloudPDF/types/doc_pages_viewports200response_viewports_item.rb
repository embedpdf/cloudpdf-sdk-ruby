# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesViewports200ResponseViewportsItem < Internal::Types::Model
      field :bbox, -> { CloudPDF::Types::DocPagesViewports200ResponseViewportsItemBbox }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :measure, -> { CloudPDF::Types::DocPagesViewports200ResponseViewportsItemMeasure }, optional: false, nullable: true

      field :owned, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
