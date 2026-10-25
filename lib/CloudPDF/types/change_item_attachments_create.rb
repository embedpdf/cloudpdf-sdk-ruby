# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAttachmentsCreate < Internal::Types::Model
      field :attachment, -> { CloudPDF::Types::Attachment }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::AttachmentMutationMeta }, optional: false, nullable: false
    end
  end
end
