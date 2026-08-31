# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemRedactActionsPageInvisible < Internal::Types::Model
      field :root, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemRedactActionsPageInvisibleRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemRedactActionsPageInvisibleWarningsItem] }, optional: false, nullable: false
    end
  end
end
