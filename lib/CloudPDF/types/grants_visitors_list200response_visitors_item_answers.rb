# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsVisitorsList200ResponseVisitorsItemAnswers < Internal::Types::Model
      field :display_name, -> { String }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :organization, -> { String }, optional: true, nullable: false

      field :organizational_unit, -> { String }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
