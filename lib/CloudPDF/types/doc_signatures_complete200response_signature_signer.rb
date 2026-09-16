# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete200ResponseSignatureSigner < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: true

      field :reason, -> { String }, optional: false, nullable: true

      field :location, -> { String }, optional: false, nullable: true

      field :contact_info, -> { String }, optional: false, nullable: true, api_name: "contactInfo"

      field :claimed_time, -> { String }, optional: false, nullable: true, api_name: "claimedTime"
    end
  end
end
