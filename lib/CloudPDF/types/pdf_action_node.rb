# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNode < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :type

      member -> { CloudPDF::Types::PdfActionNodeJavascript }, key: "JAVASCRIPT"

      member -> { CloudPDF::Types::PdfActionNodeGoto }, key: "GOTO"

      member -> { CloudPDF::Types::PdfActionNodeURI }, key: "URI"

      member -> { CloudPDF::Types::PdfActionNodeNamed }, key: "NAMED"

      member -> { CloudPDF::Types::PdfActionNodeHide }, key: "HIDE"

      member -> { CloudPDF::Types::PdfActionNodeResetForm }, key: "RESET_FORM"

      member -> { CloudPDF::Types::PdfActionNodeGotoRemote }, key: "GOTO_REMOTE"

      member -> { CloudPDF::Types::PdfActionNodeGotoEmbedded }, key: "GOTO_EMBEDDED"

      member -> { CloudPDF::Types::PdfActionNodeLaunch }, key: "LAUNCH"

      member -> { CloudPDF::Types::PdfActionNodeRendition }, key: "RENDITION"

      member -> { CloudPDF::Types::PdfActionNodeSubmitForm }, key: "SUBMIT_FORM"

      member -> { CloudPDF::Types::PdfActionNodeThread }, key: "THREAD"

      member -> { CloudPDF::Types::PdfActionNodeSound }, key: "SOUND"

      member -> { CloudPDF::Types::PdfActionNodeMovie }, key: "MOVIE"

      member -> { CloudPDF::Types::PdfActionNodeImportData }, key: "IMPORT_DATA"

      member -> { CloudPDF::Types::PdfActionNodeSetOcgState }, key: "SET_OCG_STATE"

      member -> { CloudPDF::Types::PdfActionNodeTransition }, key: "TRANSITION"

      member -> { CloudPDF::Types::PdfActionNodeGoto3DView }, key: "GOTO3D_VIEW"

      member -> { CloudPDF::Types::PdfActionNodeUnknown }, key: "UNKNOWN"
    end
  end
end
