# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesArchive200ResponseShareVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::SharesArchive200ResponseShareVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::SharesArchive200ResponseShareVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::SharesArchive200ResponseShareVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::SharesArchive200ResponseShareVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::SharesArchive200ResponseShareVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
