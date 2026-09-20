# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonCaption < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :center, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonCaptionCenter }, optional: true, nullable: false
    end
  end
end
