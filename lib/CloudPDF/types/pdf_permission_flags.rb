# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfPermissionFlags < Internal::Types::Model
      field :print, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :modify_contents, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "modifyContents"

      field :copy, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :modify_annotations, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "modifyAnnotations"

      field :fill_forms, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "fillForms"

      field :copy_for_accessibility, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "copyForAccessibility"

      field :assemble, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :print_high_quality, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "printHighQuality"
    end
  end
end
