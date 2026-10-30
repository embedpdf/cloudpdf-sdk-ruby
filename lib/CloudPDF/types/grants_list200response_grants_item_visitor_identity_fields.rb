# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsList200ResponseGrantsItemVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::GrantsList200ResponseGrantsItemVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::GrantsList200ResponseGrantsItemVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::GrantsList200ResponseGrantsItemVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::GrantsList200ResponseGrantsItemVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::GrantsList200ResponseGrantsItemVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
