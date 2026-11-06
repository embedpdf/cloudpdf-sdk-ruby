# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsGetResponseGrantVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::GrantsGetResponseGrantVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::GrantsGetResponseGrantVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::GrantsGetResponseGrantVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::GrantsGetResponseGrantVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::GrantsGetResponseGrantVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
