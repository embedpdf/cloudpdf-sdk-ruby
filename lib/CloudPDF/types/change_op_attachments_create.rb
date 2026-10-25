# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpAttachmentsCreate < Internal::Types::Model
      field :file, -> { CloudPDF::Types::AttachmentFileBase }, optional: false, nullable: false

      field :resources, -> { CloudPDF::Types::ChangeOpAttachmentsCreateResources }, optional: false, nullable: false
    end
  end
end
