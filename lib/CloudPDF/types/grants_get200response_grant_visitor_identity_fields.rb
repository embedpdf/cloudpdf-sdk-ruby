# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsGet200ResponseGrantVisitorIdentityFields < Internal::Types::Model
      field :display_name, -> { CloudPDF::Types::GrantsGet200ResponseGrantVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { CloudPDF::Types::GrantsGet200ResponseGrantVisitorIdentityFieldsEmail }, optional: true, nullable: false

      field :title, -> { CloudPDF::Types::GrantsGet200ResponseGrantVisitorIdentityFieldsTitle }, optional: true, nullable: false

      field :organization, -> { CloudPDF::Types::GrantsGet200ResponseGrantVisitorIdentityFieldsOrganization }, optional: true, nullable: false

      field :organizational_unit, -> { CloudPDF::Types::GrantsGet200ResponseGrantVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
    end
  end
end
