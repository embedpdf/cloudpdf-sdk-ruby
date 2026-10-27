# frozen_string_literal: true

module CloudPDF
  module Types
    class DocDownloadLink200Response < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :expires_at, -> { Integer }, optional: false, nullable: false, api_name: "expiresAt"
    end
  end
end
