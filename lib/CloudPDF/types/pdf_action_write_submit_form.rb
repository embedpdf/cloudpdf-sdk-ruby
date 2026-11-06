# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWriteSubmitForm < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :fields, -> { Internal::Types::Array[CloudPDF::Types::PdfActionTargetRef] }, optional: false, nullable: true

      field :exclude, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :include_no_value_fields, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includeNoValueFields"

      field :format, -> { CloudPDF::Types::PdfActionWriteSubmitFormFormat }, optional: true, nullable: false

      field :method_, -> { CloudPDF::Types::PdfActionWriteSubmitFormMethod }, optional: true, nullable: false, api_name: "method"

      field :submit_coordinates, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "submitCoordinates"

      field :include_append_saves, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includeAppendSaves"

      field :include_annotations, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includeAnnotations"

      field :canonical_format, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "canonicalFormat"

      field :excl_non_user_annots, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "exclNonUserAnnots"

      field :excl_f_key, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "exclFKey"

      field :embed_form, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "embedForm"

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
