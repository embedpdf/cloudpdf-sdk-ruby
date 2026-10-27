# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesUpdate200ResponseShareVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::SharesUpdate200ResponseShareVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::SharesUpdate200ResponseShareVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::SharesUpdate200ResponseShareVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::SharesUpdate200ResponseShareVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::SharesUpdate200ResponseShareVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
