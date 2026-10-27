# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesList200ResponseSharesItemVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::SharesList200ResponseSharesItemVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::SharesList200ResponseSharesItemVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::SharesList200ResponseSharesItemVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::SharesList200ResponseSharesItemVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::SharesList200ResponseSharesItemVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
