# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsUpdateResponseGrantVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::GrantsUpdateResponseGrantVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::GrantsUpdateResponseGrantVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::GrantsUpdateResponseGrantVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::GrantsUpdateResponseGrantVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::GrantsUpdateResponseGrantVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
