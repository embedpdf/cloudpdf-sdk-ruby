# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNodeSubmitFormPayloadFlags < Internal::Types::Model
      field :raw, -> { Integer }, optional: false, nullable: false

      field :exclude, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :include_no_value_fields, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "includeNoValueFields"

      field :format, -> { CloudPDF::Types::PdfActionNodeSubmitFormPayloadFlagsFormat }, optional: false, nullable: false

      field :method_, -> { CloudPDF::Types::PdfActionNodeSubmitFormPayloadFlagsMethod }, optional: false, nullable: false, api_name: "method"

      field :submit_coordinates, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "submitCoordinates"

      field :include_append_saves, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "includeAppendSaves"

      field :include_annotations, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "includeAnnotations"

      field :canonical_format, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "canonicalFormat"

      field :excl_non_user_annots, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "exclNonUserAnnots"

      field :excl_f_key, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "exclFKey"

      field :embed_form, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "embedForm"
    end
  end
end
