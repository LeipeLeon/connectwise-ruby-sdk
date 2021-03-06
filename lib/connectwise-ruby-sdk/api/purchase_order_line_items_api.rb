=begin
#Connectwise REST API

#ConnectWise API

OpenAPI spec version: 1.0.0
Contact: platform@connectwise.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Connectwise
  class PurchaseOrderLineItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Purchase Order Line Items Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def procurement_purchaseorders_id_lineitems_count_get(id, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Purchase Order Line Items Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_count_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_count_get" if id.nil?
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/count".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Purchase Order Line Items
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<PurchaseOrderLineItem>]
    def procurement_purchaseorders_id_lineitems_get(id, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Purchase Order Line Items
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<PurchaseOrderLineItem>, Fixnum, Hash)>] Array<PurchaseOrderLineItem> data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_get" if id.nil?
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PurchaseOrderLineItem>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Purchase Order Line Item By Id
    # @param id 
    # @param line_item_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def procurement_purchaseorders_id_lineitems_line_item_id_delete(id, line_item_id, opts = {})
      procurement_purchaseorders_id_lineitems_line_item_id_delete_with_http_info(id, line_item_id, opts)
      return nil
    end

    # 
    # Delete Purchase Order Line Item By Id
    # @param id 
    # @param line_item_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def procurement_purchaseorders_id_lineitems_line_item_id_delete_with_http_info(id, line_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_delete" if id.nil?
      # verify the required parameter 'line_item_id' is set
      fail ArgumentError, "Missing the required parameter 'line_item_id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_delete" if line_item_id.nil?
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/{lineItemId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'lineItemId' + '}', line_item_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_line_item_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Purchase Order Line Item By Id
    # @param id 
    # @param line_item_id 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderLineItem]
    def procurement_purchaseorders_id_lineitems_line_item_id_get(id, line_item_id, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_line_item_id_get_with_http_info(id, line_item_id, opts)
      return data
    end

    # 
    # Get Purchase Order Line Item By Id
    # @param id 
    # @param line_item_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderLineItem, Fixnum, Hash)>] PurchaseOrderLineItem data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_line_item_id_get_with_http_info(id, line_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_get" if id.nil?
      # verify the required parameter 'line_item_id' is set
      fail ArgumentError, "Missing the required parameter 'line_item_id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_get" if line_item_id.nil?
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/{lineItemId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'lineItemId' + '}', line_item_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseOrderLineItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_line_item_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Purchase Order Line Item
    # @param id 
    # @param line_item_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderLineItem]
    def procurement_purchaseorders_id_lineitems_line_item_id_patch(id, line_item_id, operations, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_line_item_id_patch_with_http_info(id, line_item_id, operations, opts)
      return data
    end

    # 
    # Update Purchase Order Line Item
    # @param id 
    # @param line_item_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderLineItem, Fixnum, Hash)>] PurchaseOrderLineItem data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_line_item_id_patch_with_http_info(id, line_item_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_patch ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_patch" if id.nil?
      # verify the required parameter 'line_item_id' is set
      fail ArgumentError, "Missing the required parameter 'line_item_id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_patch" if line_item_id.nil?
      # verify the required parameter 'operations' is set
      fail ArgumentError, "Missing the required parameter 'operations' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_patch" if operations.nil?
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/{lineItemId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'lineItemId' + '}', line_item_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(operations)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseOrderLineItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_line_item_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Purchase Order Line Item
    # @param id 
    # @param line_item_id 
    # @param purchase_order_line_item 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderLineItem]
    def procurement_purchaseorders_id_lineitems_line_item_id_put(id, line_item_id, purchase_order_line_item, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_line_item_id_put_with_http_info(id, line_item_id, purchase_order_line_item, opts)
      return data
    end

    # 
    # Replace Purchase Order Line Item
    # @param id 
    # @param line_item_id 
    # @param purchase_order_line_item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderLineItem, Fixnum, Hash)>] PurchaseOrderLineItem data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_line_item_id_put_with_http_info(id, line_item_id, purchase_order_line_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_put" if id.nil?
      # verify the required parameter 'line_item_id' is set
      fail ArgumentError, "Missing the required parameter 'line_item_id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_put" if line_item_id.nil?
      # verify the required parameter 'purchase_order_line_item' is set
      fail ArgumentError, "Missing the required parameter 'purchase_order_line_item' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_line_item_id_put" if purchase_order_line_item.nil?
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems/{lineItemId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'lineItemId' + '}', line_item_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(purchase_order_line_item)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseOrderLineItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_line_item_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Purchase Order Line Item
    # @param id 
    # @param purchase_order_line_item 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderLineItem]
    def procurement_purchaseorders_id_lineitems_post(id, purchase_order_line_item, opts = {})
      data, _status_code, _headers = procurement_purchaseorders_id_lineitems_post_with_http_info(id, purchase_order_line_item, opts)
      return data
    end

    # 
    # Create Purchase Order Line Item
    # @param id 
    # @param purchase_order_line_item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderLineItem, Fixnum, Hash)>] PurchaseOrderLineItem data, response status code and response headers
    def procurement_purchaseorders_id_lineitems_post_with_http_info(id, purchase_order_line_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_post ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_post" if id.nil?
      # verify the required parameter 'purchase_order_line_item' is set
      fail ArgumentError, "Missing the required parameter 'purchase_order_line_item' when calling PurchaseOrderLineItemsApi.procurement_purchaseorders_id_lineitems_post" if purchase_order_line_item.nil?
      # resource path
      local_var_path = "/procurement/purchaseorders/{id}/lineitems".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(purchase_order_line_item)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseOrderLineItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderLineItemsApi#procurement_purchaseorders_id_lineitems_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
