# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineCaption < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :center, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineCaptionCenter }, optional: true, nullable: false
    end
  end
end
