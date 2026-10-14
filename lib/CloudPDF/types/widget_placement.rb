# frozen_string_literal: true

module CloudPDF
  module Types
    class WidgetPlacement < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :rect, -> { CloudPDF::Types::WidgetPlacementRect }, optional: true, nullable: false

      field :box, -> { CloudPDF::Types::WidgetPlacementBox }, optional: true, nullable: false

      field :rotation, -> { Integer }, optional: true, nullable: false

      field :export_value, -> { String }, optional: true, nullable: false, api_name: "exportValue"

      field :actions, -> { CloudPDF::Types::WidgetActionsPatch }, optional: true, nullable: false

      field :color, -> { String }, optional: true, nullable: false

      field :interior_color, -> { String }, optional: true, nullable: false, api_name: "interiorColor"

      field :stroke_width, -> { Integer }, optional: true, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { CloudPDF::Types::WidgetPlacementBorderStyle }, optional: true, nullable: false, api_name: "borderStyle"

      field :dash_array, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "dashArray"

      field :font_family, -> { String }, optional: true, nullable: false, api_name: "fontFamily"

      field :font_size, -> { Integer }, optional: true, nullable: false, api_name: "fontSize"

      field :font_color, -> { String }, optional: true, nullable: false, api_name: "fontColor"

      field :text_align, -> { CloudPDF::Types::WidgetPlacementTextAlign }, optional: true, nullable: false, api_name: "textAlign"

      field :caption, -> { String }, optional: true, nullable: false

      field :check_style, -> { CloudPDF::Types::WidgetPlacementCheckStyle }, optional: true, nullable: false, api_name: "checkStyle"
    end
  end
end
