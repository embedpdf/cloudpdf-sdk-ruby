# frozen_string_literal: true

module CloudPDF
  module Types
    class DocHead200ResponsePermissions < Internal::Types::Model
      field :known, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :bits, -> { Integer }, optional: false, nullable: true

      field :all_allowed, -> { Internal::Types::Boolean }, optional: false, nullable: true, api_name: "allAllowed"

      field :opened_as, -> { CloudPDF::Types::DocHead200ResponsePermissionsOpenedAs }, optional: false, nullable: true, api_name: "openedAs"

      field :security_handler_revision, -> { Integer }, optional: false, nullable: true, api_name: "securityHandlerRevision"

      field :can_upgrade_to_owner, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "canUpgradeToOwner"
    end
  end
end
