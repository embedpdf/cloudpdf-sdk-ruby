# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineCaption < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :position, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineCaptionPosition }, optional: true, nullable: false

      field :offset, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineCaptionOffset }, optional: true, nullable: false
    end
  end
end
