# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesCreate200ResponseShareVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::SharesCreate200ResponseShareVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::SharesCreate200ResponseShareVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::SharesCreate200ResponseShareVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::SharesCreate200ResponseShareVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::SharesCreate200ResponseShareVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
