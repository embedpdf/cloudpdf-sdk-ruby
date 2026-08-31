# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
