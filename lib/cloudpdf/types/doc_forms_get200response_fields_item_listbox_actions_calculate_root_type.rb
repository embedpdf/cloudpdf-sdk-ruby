# frozen_string_literal: true

module Cloudpdf
  module Types
    module DocFormsGet200ResponseFieldsItemListboxActionsCalculateRootType
      extend Cloudpdf::Internal::Types::Enum

      UNKNOWN = "unknown"
      GOTO = "goto"
      GOTO_REMOTE = "goto-remote"
      GOTO_EMBEDDED = "goto-embedded"
      LAUNCH = "launch"
      THREAD = "thread"
      URI = "uri"
      SOUND = "sound"
      MOVIE = "movie"
      HIDE = "hide"
      NAMED = "named"
      SUBMIT_FORM = "submit-form"
      RESET_FORM = "reset-form"
      IMPORT_DATA = "import-data"
      JAVASCRIPT = "javascript"
      SET_OCG_STATE = "set-ocg-state"
      RENDITION = "rendition"
      TRANSITION = "transition"
      GOTO3D_VIEW = "goto-3d-view"
    end
  end
end
