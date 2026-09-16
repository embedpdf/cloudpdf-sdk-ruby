# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesPrepare200ResponseExpectedVersion < Internal::Types::Model
      field :base_sha256, -> { String }, optional: false, nullable: false, api_name: "baseSha256"

      field :edits_version, -> { Integer }, optional: false, nullable: false, api_name: "editsVersion"
    end
  end
end
