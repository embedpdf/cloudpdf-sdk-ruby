# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesUpdateRequestVisitorIdentityFields < Internal::Types::Model
        field :display_name, -> { CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentityFieldsDisplayName }, optional: true, nullable: false, api_name: "displayName"

        field :email, -> { CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentityFieldsEmail }, optional: true, nullable: false

        field :title, -> { CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentityFieldsTitle }, optional: true, nullable: false

        field :organization, -> { CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentityFieldsOrganization }, optional: true, nullable: false

        field :organizational_unit, -> { CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentityFieldsOrganizationalUnit }, optional: true, nullable: false, api_name: "organizationalUnit"
      end
    end
  end
end
