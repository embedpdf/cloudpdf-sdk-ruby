# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsListResponseGrantsItemVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::GrantsListResponseGrantsItemVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::GrantsListResponseGrantsItemVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::GrantsListResponseGrantsItemVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::GrantsListResponseGrantsItemVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::GrantsListResponseGrantsItemVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
