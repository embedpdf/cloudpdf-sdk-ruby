# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesGet200ResponseShareVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::SharesGet200ResponseShareVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::SharesGet200ResponseShareVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::SharesGet200ResponseShareVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::SharesGet200ResponseShareVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::SharesGet200ResponseShareVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
