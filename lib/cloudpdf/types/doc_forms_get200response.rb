# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200Response < Internal::Types::Model
      field :form_kind, -> { Cloudpdf::Types::DocFormsGet200ResponseFormKind }, optional: false, nullable: false, api_name: "formKind"

      field :needs_appearances, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "needsAppearances"

      field :fields, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseFieldsItem] }, optional: false, nullable: false

      field :calculation_order, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseCalculationOrderItem] }, optional: false, nullable: false, api_name: "calculationOrder"
    end
  end
end
