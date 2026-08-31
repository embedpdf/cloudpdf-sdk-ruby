# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItem < Internal::Types::Model
      field :page_state, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemPageState }, optional: false, nullable: false, api_name: "pageState"

      field :annotations, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItem] }, optional: false, nullable: false
    end
  end
end
