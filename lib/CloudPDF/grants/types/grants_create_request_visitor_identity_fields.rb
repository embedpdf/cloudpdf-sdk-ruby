# frozen_string_literal: true

module CloudPDF
  module Grants
    module Types
      class GrantsCreateRequestVisitorIdentityFields < Internal::Types::Model
        field :display_name, -> { CloudPDF::Grants::Types::GrantsCreateRequestVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

        field :email, -> { CloudPDF::Grants::Types::GrantsCreateRequestVisitorIdentityFieldsEmail }, optional: true, nullable: false

        field :title, -> { CloudPDF::Grants::Types::GrantsCreateRequestVisitorIdentityFieldsTitle }, optional: true, nullable: false

        field :organization, -> { CloudPDF::Grants::Types::GrantsCreateRequestVisitorIdentityFieldsOrganization }, optional: true, nullable: false

        field :organizational_unit, -> { CloudPDF::Grants::Types::GrantsCreateRequestVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
      end
    end
  end
end
