# frozen_string_literal: true

module CloudPDF
  module Types
    class DocDownloadLinkResponse < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"
    end
  end
end
