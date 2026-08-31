# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLinePoints < Internal::Types::Model
      field :start, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLinePointsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLinePointsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
