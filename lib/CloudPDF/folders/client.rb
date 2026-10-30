# frozen_string_literal: true

module CloudPDF
  module Folders
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
      # @option params [String] :tenant_id
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      # @option params [String, nil] :parent_id
      #
      # @example
      #   client.folders.list(tenant_id: "tenantId")
      #
      # @return [CloudPDF::Types::FoldersList200Response]
      def list(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["parentId"] = params[:parent_id] if params.key?(:parent_id)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/folders",
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
          (response.body.to_s.empty? ? nil : CloudPDF::Types::FoldersList200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # 409 Conflict carries `details.reason`: `name-taken` (a sibling has the name, ignoring case; `details.name`) or
      # `too-deep` (folders nest at most 100 levels; `details.maxDepth`). 404 when the parent folder does not exist.
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Folders::Types::FoldersCreateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      #
      # @example
      #   client.folders.create(
      #     tenant_id: "tenantId",
      #     name: "name"
      #   )
      #
      # @return [CloudPDF::Types::FoldersCreate200Response]
      def create(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Folders::Types::FoldersCreateRequest.new(params).to_h
        non_body_param_names = %w[tenantId]
        body = request_data.except(*non_body_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/folders",
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
          (response.body.to_s.empty? ? nil : CloudPDF::Types::FoldersCreate200Response.load(response.body))
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
      # @option params [String] :folder_id
      #
      # @example
      #   client.folders.get(
      #     tenant_id: "tenantId",
      #     folder_id: "folderId"
      #   )
      #
      # @return [CloudPDF::Types::FoldersGet200Response]
      def get(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::FoldersGet200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Without recursive, a folder with anything inside is refused: 409 Conflict with `details.reason` `not-empty` and
      # what it holds, counted over every level below, in `details.folders` and `details.documents`. With
      # recursive=true, the folder and every folder under it go at once, and every document in them stops opening,
      # leaves every list and stops answering its grants at once; their stored files and grants are removed in the
      # background. Uploads into those folders that have not committed cannot commit.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :folder_id
      # @option params [Boolean, nil] :recursive
      #
      # @example
      #   client.folders.delete(
      #     tenant_id: "tenantId",
      #     folder_id: "folderId"
      #   )
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["recursive"] = params[:recursive] if params.key?(:recursive)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
          query: query_params,
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

      # 409 Conflict with `details.reason` `name-taken` when a sibling has the name, ignoring case.
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Folders::Types::FoldersUpdateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :folder_id
      #
      # @example
      #   client.folders.update(
      #     tenant_id: "tenantId",
      #     folder_id: "folderId",
      #     name: "name"
      #   )
      #
      # @return [CloudPDF::Types::FoldersUpdate200Response]
      def update(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Folders::Types::FoldersUpdateRequest.new(params).to_h
        non_body_param_names = %w[tenantId folderId]
        body = request_data.except(*non_body_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/folders/#{URI.encode_uri_component(params[:folder_id].to_s)}",
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
          (response.body.to_s.empty? ? nil : CloudPDF::Types::FoldersUpdate200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Up to 1,000 ids in total. A folder moves with everything in it. 404 NotFound names the ids that do not exist or
      # are being deleted in `details.documentIds` and `details.folderIds`. 409 Conflict carries `details.reason`:
      # `cycle` (the destination is a moved folder or inside one; `details.folderId`), `too-deep` (the move would nest
      # folders deeper than 100 levels; `details.maxDepth`) or `name-taken` (a moved folder's name is taken in the
      # destination, ignoring case; `details.name`).
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Folders::Types::FoldersMoveIntoRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :folder_id
      #
      # @example
      #   client.folders.move_into(
      #     tenant_id: "tenantId",
      #     folder_id: "folderId"
      #   )
      #
      # @return [untyped]
      def move_into(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Folders::Types::FoldersMoveIntoRequest.new(params).to_h
        non_body_param_names = %w[tenantId folderId]
        body = request_data.except(*non_body_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/folders/#{URI.encode_uri_component(params[:folder_id].to_s)}/move-into",
          body: body,
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
