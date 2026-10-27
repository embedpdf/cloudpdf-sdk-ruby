# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesCreateRequestVisitorIdentityFields < Internal::Types::Model
        field :display_name, -> { CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

        field :email, -> { CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentityFieldsEmail }, optional: true, nullable: false

        field :title, -> { CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentityFieldsTitle }, optional: true, nullable: false

        field :organization, -> { CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentityFieldsOrganization }, optional: true, nullable: false

        field :organizational_unit, -> { CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
      end
    end
  end
end
