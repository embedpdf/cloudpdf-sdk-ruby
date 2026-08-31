# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
