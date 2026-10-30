# frozen_string_literal: true

module CloudPDF
  module Grants
    module Types
      class GrantsUpdateRequestVisitorIdentityFields < Internal::Types::Model
        field :display_name, -> { CloudPDF::Grants::Types::GrantsUpdateRequestVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

        field :email, -> { CloudPDF::Grants::Types::GrantsUpdateRequestVisitorIdentityFieldsEmail }, optional: true, nullable: false

        field :title, -> { CloudPDF::Grants::Types::GrantsUpdateRequestVisitorIdentityFieldsTitle }, optional: true, nullable: false

        field :organization, -> { CloudPDF::Grants::Types::GrantsUpdateRequestVisitorIdentityFieldsOrganization }, optional: true, nullable: false

        field :organizational_unit, -> { CloudPDF::Grants::Types::GrantsUpdateRequestVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
      end
    end
  end
end
