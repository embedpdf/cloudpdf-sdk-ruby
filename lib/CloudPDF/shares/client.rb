# frozen_string_literal: true

module CloudPDF
  module Shares
    class Client
      # @param client [CloudPDF::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Unauthenticated, but requires a browser Origin header, checked against the grant allowlist. Unknown, revoked,
      # and disabled tokens are indistinguishable (404). Passphrase-protected grants return 422 SharePasswordRequired
      # until `password` is supplied. A link that asks its visitors who they are on open returns 422
      # VisitorIdentityRequired until the required answers are given; `error.details` carries `fields` (what the link
      # asks), `missing`, `invalid`, `purpose` and `privacyUrl`. A link that asks before the first change issues the
      # session at once with `visitor.identityRequest`, and writes answer 403 VisitorIdentityRequired with the same
      # details until the visitor exchanges again with their answers. Answers that can not be taken answer 422 on any
      # link. Mounted only when the deployment can sign (HS256 mode).
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Shares::Types::SharesExchangeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.shares.exchange(share_token: "shareToken")
      #
      # @return [CloudPDF::Types::SharesExchange200Response]
      def exchange(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/share-sessions",
          body: CloudPDF::Shares::Types::SharesExchangeRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::SharesExchange200Response.load(response.body))
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
      # @option params [String] :tenant_id
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      # @option params [String, nil] :doc_id
      # @option params [Boolean, nil] :archived
      #
      # @example
      #   client.shares.list(tenant_id: "tenantId")
      #
      # @return [CloudPDF::Types::SharesList200Response]
      def list(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["docId"] = params[:doc_id] if params.key?(:doc_id)
        query_params["archived"] = params[:archived] if params.key?(:archived)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/shares",
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
          (response.body.to_s.empty? ? nil : CloudPDF::Types::SharesList200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # The returned share id is the public share token. Mounted only when the deployment can sign (HS256 mode) —
      # exchange mints session JWTs, so grants exist only where minting does.
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Shares::Types::SharesCreateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      #
      # @example
      #   client.shares.create(
      #     tenant_id: "tenantId",
      #     doc_id: "docId",
      #     scope: ["scope"]
      #   )
      #
      # @return [CloudPDF::Types::SharesCreate200Response]
      def create(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Shares::Types::SharesCreateRequest.new(params).to_h
        non_body_param_names = %w[tenantId]
        body = request_data.except(*non_body_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/shares",
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
          (response.body.to_s.empty? ? nil : CloudPDF::Types::SharesCreate200Response.load(response.body))
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
      # @option params [String] :tenant_id
      # @option params [String] :share_id
      #
      # @example
      #   client.shares.get(
      #     tenant_id: "tenantId",
      #     share_id: "shareId"
      #   )
      #
      # @return [CloudPDF::Types::SharesGet200Response]
      def get(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/shares/#{URI.encode_uri_component(params[:share_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::SharesGet200Response.load(response.body))
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
      # @option params [String] :tenant_id
      # @option params [String] :share_id
      #
      # @example
      #   client.shares.delete(
      #     tenant_id: "tenantId",
      #     share_id: "shareId"
      #   )
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/shares/#{URI.encode_uri_component(params[:share_id].to_s)}",
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
      # @param params [CloudPDF::Shares::Types::SharesUpdateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :share_id
      #
      # @example
      #   client.shares.update(
      #     tenant_id: "tenantId",
      #     share_id: "shareId"
      #   )
      #
      # @return [CloudPDF::Types::SharesUpdate200Response]
      def update(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Shares::Types::SharesUpdateRequest.new(params).to_h
        non_body_param_names = %w[tenantId shareId]
        body = request_data.except(*non_body_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/shares/#{URI.encode_uri_component(params[:share_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : CloudPDF::Types::SharesUpdate200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Archiving is final: an archived link never exchanges again, and to share again you create a new link. Pausing
      # (`disabled`) is the reversible stop. An archived link no longer counts as using its shared layer, so that layer
      # can be deleted.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :share_id
      #
      # @example
      #   client.shares.archive(
      #     tenant_id: "tenantId",
      #     share_id: "shareId"
      #   )
      #
      # @return [CloudPDF::Types::SharesArchive200Response]
      def archive(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/shares/#{URI.encode_uri_component(params[:share_id].to_s)}/archive",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::SharesArchive200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [CloudPDF::Visitors::Client]
      def visitors
        @visitors ||= CloudPDF::Shares::Visitors::Client.new(client: @client)
      end
    end
  end
end
