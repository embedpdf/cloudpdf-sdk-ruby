# frozen_string_literal: true

module Cloudpdf
  module Documents
    class Client
      # @param client [Cloudpdf::Internal::Http::RawClient]
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
      # @option params [String] :tenant_id
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      # @option params [Cloudpdf::Documents::Types::ListDocumentsRequestState, nil] :state
      #
      # @example
      #   client.documents.list(tenant_id: "tenantId")
      #
      # @return [Cloudpdf::Types::DocumentsList200Response]
      def list(request_options: {}, **params)
        params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["state"] = params[:state] if params.key?(:state)

        request = Cloudpdf::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/documents",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Cloudpdf::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Cloudpdf::Types::DocumentsList200Response.load(response.body)
        else
          error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
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
      # @option params [String] :tenant_id
      # @option params [String] :id
      #
      # @example
      #   client.documents.get(
      #     tenant_id: "tenantId",
      #     id: "id"
      #   )
      #
      # @return [Cloudpdf::Types::DocumentsGet200Response]
      def get(request_options: {}, **params)
        params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
        request = Cloudpdf::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/documents/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Cloudpdf::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Cloudpdf::Types::DocumentsGet200Response.load(response.body)
        else
          error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
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
      # @option params [String] :tenant_id
      # @option params [String] :id
      #
      # @example
      #   client.documents.delete(
      #     tenant_id: "tenantId",
      #     id: "id"
      #   )
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
        request = Cloudpdf::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/documents/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Cloudpdf::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Cloudpdf::Documents::Types::DocumentsCommitRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :id
      #
      # @example
      #   client.documents.commit(
      #     tenant_id: "tenantId",
      #     id: "id",
      #     sha256: "sha256"
      #   )
      #
      # @return [Cloudpdf::Types::DocumentsCommit200Response]
      def commit(request_options: {}, **params)
        params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
        request_data = Cloudpdf::Documents::Types::DocumentsCommitRequest.new(params).to_h
        non_body_param_names = %w[tenantId id]
        body = request_data.except(*non_body_param_names)

        request = Cloudpdf::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/documents/#{URI.encode_uri_component(params[:id].to_s)}/commit",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Cloudpdf::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Cloudpdf::Types::DocumentsCommit200Response.load(response.body)
        else
          error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
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
      # @option params [String] :tenant_id
      # @option params [String] :id
      #
      # @example
      #   client.documents.download(
      #     tenant_id: "tenantId",
      #     id: "id"
      #   )
      #
      # @return [untyped]
      def download(request_options: {}, **params)
        params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
        request = Cloudpdf::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/documents/#{URI.encode_uri_component(params[:id].to_s)}/download",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Cloudpdf::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :id
      #
      # @example
      #   client.documents.thumbnail(
      #     tenant_id: "tenantId",
      #     id: "id"
      #   )
      #
      # @return [untyped]
      def thumbnail(request_options: {}, **params)
        params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
        request = Cloudpdf::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/documents/#{URI.encode_uri_component(params[:id].to_s)}/thumbnail",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Cloudpdf::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :id
      #
      # @return [Cloudpdf::Types::DocumentsUploadDirect200Response]
      def upload_direct(request_options: {}, **params)
        params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
        request = Cloudpdf::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/documents/#{URI.encode_uri_component(params[:id].to_s)}/upload-direct",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Cloudpdf::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Cloudpdf::Types::DocumentsUploadDirect200Response.load(response.body)
        else
          error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Cloudpdf::Documents::Types::DocumentsInitRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      #
      # @example
      #   client.documents.init(
      #     tenant_id: "tenantId",
      #     content_length: 1.1,
      #     content_sha256: "contentSha256"
      #   )
      #
      # @return [Cloudpdf::Types::DocumentsInit200Response]
      def init(request_options: {}, **params)
        params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
        request_data = Cloudpdf::Documents::Types::DocumentsInitRequest.new(params).to_h
        non_body_param_names = %w[tenantId]
        body = request_data.except(*non_body_param_names)

        request = Cloudpdf::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/documents/init",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Cloudpdf::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Cloudpdf::Types::DocumentsInit200Response.load(response.body)
        else
          error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
