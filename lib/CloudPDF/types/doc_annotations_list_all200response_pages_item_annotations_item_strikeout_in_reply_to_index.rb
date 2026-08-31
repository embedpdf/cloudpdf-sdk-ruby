# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemStrikeoutInReplyToIndex < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :revision, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemStrikeoutInReplyToIndexRevision }, optional: false, nullable: false
    end
  end
end
