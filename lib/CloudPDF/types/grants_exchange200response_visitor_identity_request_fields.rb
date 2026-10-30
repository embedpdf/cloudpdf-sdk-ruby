# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsExchange200ResponseVisitorIdentityRequestFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::GrantsExchange200ResponseVisitorIdentityRequestFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::GrantsExchange200ResponseVisitorIdentityRequestFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::GrantsExchange200ResponseVisitorIdentityRequestFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::GrantsExchange200ResponseVisitorIdentityRequestFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::GrantsExchange200ResponseVisitorIdentityRequestFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
