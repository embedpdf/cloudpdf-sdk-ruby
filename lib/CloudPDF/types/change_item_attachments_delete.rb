# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAttachmentsDelete < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::AttachmentMutationMeta }, optional: false, nullable: false
    end
  end
end
