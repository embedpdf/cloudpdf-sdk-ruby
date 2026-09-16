# frozen_string_literal: true

module CloudPDF
  module Doc
    module Versions
      class Client
        # @param client [CloudPDF::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Every completed signature publishes a new version. Never cached: the list grows.
        #
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
        #   client.doc.versions.list(doc_id: "docId")
        #
        # @return [CloudPDF::Types::DocVersionsList200Response]
        def list(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/versions",
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
            CloudPDF::Types::DocVersionsList200Response.load(response.body)
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Exactly one of `since.signature` / `since.revision`; `until=<revision>` defaults to the last. The same answer
        # for every layer and every caller.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :sha
        # @option params [Integer, nil] :since_signature
        # @option params [Integer, nil] :since_revision
        # @option params [CloudPDF::Doc::Versions::Types::AnalysisVersionsRequestLevel, nil] :level
        # @option params [Integer, nil] :until_
        # @option params [Integer, nil] :policy
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.versions.analysis(
        #     doc_id: "docId",
        #     sha: "sha"
        #   )
        #
        # @return [CloudPDF::Types::DocVersionsAnalysis200Response]
        def analysis(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["since.signature"] = params[:since_signature] if params.key?(:since_signature)
          query_params["since.revision"] = params[:since_revision] if params.key?(:since_revision)
          query_params["level"] = params[:level] if params.key?(:level)
          query_params["until"] = params[:until_] if params.key?(:until_)
          query_params["policy"] = params[:policy] if params.key?(:policy)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/versions/analysis/#{URI.encode_uri_component(params[:sha].to_s)}",
            headers: headers,
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise CloudPDF::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            CloudPDF::Types::DocVersionsAnalysis200Response.load(response.body)
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
        # @option params [String] :sha
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.versions.download(
        #     doc_id: "docId",
        #     sha: "sha"
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
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/versions/download/#{URI.encode_uri_component(params[:sha].to_s)}",
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
        # @option params [String] :sha
        # @option params [Integer] :index
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.versions.revision(
        #     doc_id: "docId",
        #     sha: "sha",
        #     index: 1
        #   )
        #
        # @return [untyped]
        def revision(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/versions/revisions/#{URI.encode_uri_component(params[:sha].to_s)}/#{URI.encode_uri_component(params[:index].to_s)}",
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
        # @option params [String] :sha
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.versions.signatures(
        #     doc_id: "docId",
        #     sha: "sha"
        #   )
        #
        # @return [CloudPDF::Types::DocVersionsSignatures200Response]
        def signatures(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/versions/signatures/#{URI.encode_uri_component(params[:sha].to_s)}",
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
            CloudPDF::Types::DocVersionsSignatures200Response.load(response.body)
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # `fieldKey` is the field's fully qualified name, token-text encoded (the same encoding attachment keys use).
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :sha
        # @option params [String] :field_key
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.versions.signature_contents(
        #     doc_id: "docId",
        #     sha: "sha",
        #     field_key: "fieldKey"
        #   )
        #
        # @return [untyped]
        def signature_contents(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/versions/signatures/#{URI.encode_uri_component(params[:sha].to_s)}/#{URI.encode_uri_component(params[:field_key].to_s)}/contents",
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

        # What a CMS verifier compares its message digest to.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :sha
        # @option params [String] :field_key
        # @option params [CloudPDF::Doc::Versions::Types::SignatureDigestVersionsRequestAlgorithm] :algorithm
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.versions.signature_digest(
        #     doc_id: "docId",
        #     sha: "sha",
        #     field_key: "fieldKey",
        #     algorithm: "sha1"
        #   )
        #
        # @return [untyped]
        def signature_digest(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/versions/signatures/#{URI.encode_uri_component(params[:sha].to_s)}/#{URI.encode_uri_component(params[:field_key].to_s)}/digest/#{URI.encode_uri_component(params[:algorithm].to_s)}",
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
      end
    end
  end
end
