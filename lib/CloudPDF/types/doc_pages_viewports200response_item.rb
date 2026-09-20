# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesViewports200ResponseItem < Internal::Types::Model
      field :bbox, -> { CloudPDF::Types::DocPagesViewports200ResponseItemBbox }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :measure, -> { CloudPDF::Types::DocPagesViewports200ResponseItemMeasure }, optional: true, nullable: false

      field :owned, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
