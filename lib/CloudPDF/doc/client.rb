# frozen_string_literal: true

module CloudPDF
  module Doc
    class Client
      # @param client [CloudPDF::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :doc_id
      # @option params [String, nil] :document_password
      #
      # @example
      #   client.doc.head(doc_id: "docId")
      #
      # @return [CloudPDF::Types::DocHead200Response]
      def head(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Document-Password"] = params[:document_password] if params[:document_password]

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/head",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::DocHead200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Each change stands on its own and names itself by `opId`: a refused change rolls back alone, and the answer
      # lists every change in order, applied with its result or refused with its error. Asked again under its `opId`, a
      # change gets the same answer, refusals included; a different change under an answered `opId` is refused
      # (IdempotencyKeyReused). `{ opId, undoOf }` undoes an earlier change of the caller, here or in an earlier
      # request; an undo leaves alone what was changed since, and the undo of an undo redoes. A redaction, a flatten, a
      # form repair or a completed signature ends undo for the changes before it (UndoUnavailable). Each op is checked
      # against its own capability: annotation ops need `doc.annotate.modify`, form values `doc.forms.fill`, form
      # structure `doc.forms.modify`, metadata `doc.metadata.modify`, outline `doc.outline.modify`, pages
      # `doc.pages.assemble`, embedded files `doc.attachments.modify`. Bytes (a stamp's drawing, an attached file, a
      # signature's artwork, a PDF whose pages come in) travel as multipart: a JSON `body` part, each op naming its
      # files by role as `resources: { <role>: '<key>' }`, and each file as the part `resource:<key>`. At most 64
      # changes per request and 512 ops per change.
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Doc::Types::DocChangesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :doc_id
      # @option params [String] :layer_name
      # @option params [String, nil] :document_password
      #
      # @example
      #   client.doc.changes(
      #     doc_id: "docId",
      #     layer_name: "layerName",
      #     changes: [{
      #       op_id: "opId"
      #     }]
      #   )
      #
      # @return [CloudPDF::Types::DocChanges200Response]
      def changes(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Doc::Types::DocChangesRequest.new(params).to_h
        non_body_param_names = %w[docId layerName X-Document-Password]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["X-Document-Password"] = params[:document_password] if params[:document_password]

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/changes",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::DocChanges200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :doc_id
      # @option params [String] :layer_name
      # @option params [String, nil] :document_password
      #
      # @example
      #   client.doc.download(
      #     doc_id: "docId",
      #     layer_name: "layerName"
      #   )
      #
      # @return [untyped]
      def download(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Document-Password"] = params[:document_password] if params[:document_password]

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/download",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # The link opens the layer as it is when created: once the layer changes, it answers 404, so create it right
      # before handing it over. It downloads that one file and nothing else, and a password-protected document is
      # checked when the link is created. Deployments that verify tokens with their own keys (JWKS) mint links on their
      # backend: a doc token with `layer_name`, a `download: { docVersion, mode: "incremental" }` claim and a short
      # `exp`, passed as `link` on the versioned download URL.
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Doc::Types::DocDownloadLinkRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :doc_id
      # @option params [String] :layer_name
      # @option params [String, nil] :document_password
      #
      # @example
      #   client.doc.download_link(
      #     doc_id: "docId",
      #     layer_name: "layerName"
      #   )
      #
      # @return [CloudPDF::Types::DocDownloadLink200Response]
      def download_link(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Doc::Types::DocDownloadLinkRequest.new(params).to_h
        non_body_param_names = %w[docId layerName X-Document-Password]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["X-Document-Password"] = params[:document_password] if params[:document_password]

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/download-link",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::DocDownloadLink200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :doc_id
      # @option params [String] :layer_name
      # @option params [String, nil] :document_password
      #
      # @example
      #   client.doc.manifest(
      #     doc_id: "docId",
      #     layer_name: "layerName"
      #   )
      #
      # @return [CloudPDF::Types::DocManifest200Response]
      def manifest(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Document-Password"] = params[:document_password] if params[:document_password]

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/manifest",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::DocManifest200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Render parameters (viewport, format) pass as flat dotted query keys, e.g.
      # `?viewport.kind=width&viewport.width=800`; the full grammar is documented with the viewer.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :doc_id
      # @option params [String] :layer_name
      # @option params [String] :page_key
      # @option params [String, nil] :document_password
      #
      # @example
      #   client.doc.render(
      #     doc_id: "docId",
      #     layer_name: "layerName",
      #     page_key: "pageKey"
      #   )
      #
      # @return [untyped]
      def render(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Document-Password"] = params[:document_password] if params[:document_password]

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/render/pages/#{URI.encode_uri_component(params[:page_key].to_s)}/data",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :doc_id
      # @option params [String] :layer_name
      # @option params [String] :page_key
      # @option params [String, nil] :document_password
      #
      # @example
      #   client.doc.text(
      #     doc_id: "docId",
      #     layer_name: "layerName",
      #     page_key: "pageKey"
      #   )
      #
      # @return [CloudPDF::Types::DocText200Response]
      def text(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Document-Password"] = params[:document_password] if params[:document_password]

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/text/pages/#{URI.encode_uri_component(params[:page_key].to_s)}/data",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::DocText200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [CloudPDF::Annotations::Client]
      def annotations
        @annotations ||= CloudPDF::Doc::Annotations::Client.new(client: @client)
      end

      # @return [CloudPDF::Attachments::Client]
      def attachments
        @attachments ||= CloudPDF::Doc::Attachments::Client.new(client: @client)
      end

      # @return [CloudPDF::Forms::Client]
      def forms
        @forms ||= CloudPDF::Doc::Forms::Client.new(client: @client)
      end

      # @return [CloudPDF::Metadata::Client]
      def metadata
        @metadata ||= CloudPDF::Doc::Metadata::Client.new(client: @client)
      end

      # @return [CloudPDF::Outline::Client]
      def outline
        @outline ||= CloudPDF::Doc::Outline::Client.new(client: @client)
      end

      # @return [CloudPDF::Pages::Client]
      def pages
        @pages ||= CloudPDF::Doc::Pages::Client.new(client: @client)
      end

      # @return [CloudPDF::Redactions::Client]
      def redactions
        @redactions ||= CloudPDF::Doc::Redactions::Client.new(client: @client)
      end

      # @return [CloudPDF::Signatures::Client]
      def signatures
        @signatures ||= CloudPDF::Doc::Signatures::Client.new(client: @client)
      end

      # @return [CloudPDF::Versions::Client]
      def versions
        @versions ||= CloudPDF::Doc::Versions::Client.new(client: @client)
      end
    end
  end
end
