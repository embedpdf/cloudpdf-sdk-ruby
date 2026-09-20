# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlSlopeItem < Internal::Types::Model
      field :unit, -> { String }, optional: false, nullable: false

      field :conversion, -> { Integer }, optional: true, nullable: false

      field :fraction, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlSlopeItemFraction }, optional: true, nullable: false

      field :precision, -> { Integer }, optional: true, nullable: false

      field :fixed, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :thousands, -> { String }, optional: true, nullable: false

      field :decimal, -> { String }, optional: true, nullable: false

      field :prefix_spacing, -> { String }, optional: true, nullable: false, api_name: "prefixSpacing"

      field :suffix_spacing, -> { String }, optional: true, nullable: false, api_name: "suffixSpacing"

      field :label_position, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlSlopeItemLabelPosition }, optional: true, nullable: false, api_name: "labelPosition"
    end
  end
end
