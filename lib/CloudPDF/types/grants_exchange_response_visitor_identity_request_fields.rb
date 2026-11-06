# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsExchangeResponseVisitorIdentityRequestFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequestFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequestFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequestFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequestFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequestFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
