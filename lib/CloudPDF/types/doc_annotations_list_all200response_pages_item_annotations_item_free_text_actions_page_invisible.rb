# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextActionsPageInvisible < Internal::Types::Model
      field :root, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextActionsPageInvisibleRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextActionsPageInvisibleWarningsItem] }, optional: false, nullable: false
    end
  end
end
