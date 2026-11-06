# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsListResponse < Internal::Types::Model
      field :base_sha256, -> { String }, optional: false, nullable: false, api_name: "baseSha256"

      field :versions, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsListResponseVersionsItem] }, optional: false, nullable: false
    end
  end
end
