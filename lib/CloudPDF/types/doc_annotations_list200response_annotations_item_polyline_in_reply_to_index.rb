# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemPolylineInReplyToIndex < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :revision, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineInReplyToIndexRevision }, optional: false, nullable: false
    end
  end
end
