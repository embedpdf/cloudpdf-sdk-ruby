# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesExchange200ResponseVisitorIdentityRequestFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::SharesExchange200ResponseVisitorIdentityRequestFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::SharesExchange200ResponseVisitorIdentityRequestFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::SharesExchange200ResponseVisitorIdentityRequestFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::SharesExchange200ResponseVisitorIdentityRequestFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::SharesExchange200ResponseVisitorIdentityRequestFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
