import Foundation

public final class EcommerceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get information about the e-commerce endpoint's resources.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> ListEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce",
            requestOptions: requestOptions,
            responseType: ListEcommerceResponse.self
        )
    }

    /// Get information about an account's orders.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listOrders()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter campaignId: Restrict results to orders with a specific `campaign_id` value.
    /// - Parameter outreachId: Restrict results to orders with a specific `outreach_id` value.
    /// - Parameter customerId: Restrict results to orders made by a specific customer.
    /// - Parameter hasOutreach: Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listOrders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String? = nil, outreachId: String? = nil, customerId: String? = nil, hasOutreach: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ListOrdersEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/orders",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "campaign_id": campaignId.map { .string($0) }, 
                "outreach_id": outreachId.map { .string($0) }, 
                "customer_id": customerId.map { .string($0) }, 
                "has_outreach": hasOutreach.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListOrdersEcommerceResponse.self
        )
    }

    /// Get information about all stores in the account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStores()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStores(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoresEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoresEcommerceResponse.self
        )
    }

    /// Add a new store to your Mailchimp account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStore(request: .init(
    ///         currencyCode: "USD",
    ///         id: "example_store",
    ///         listId: "1a2df69511",
    ///         name: "Freddie's Cat Hat Emporium"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStore(request: Requests.CreateStoreEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceStore {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceStore.self
        )
    }

    /// Get information about a specific store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStore(storeId: "store_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStore(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommerceStore {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommerceStore.self
        )
    }

    /// Delete a store. Deleting a store will also delete any associated subresources, including Customers, Orders, Products, and Carts.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStore(storeId: "store_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStore(storeId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)",
            requestOptions: requestOptions
        )
    }

    /// Update a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStore(
    ///         storeId: "store_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStore(storeId: String, request: Requests.UpdateStoreEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceStore {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceStore.self
        )
    }

    /// Get information about a store's carts.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStoreCarts(storeId: "store_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStoreCarts(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoreCartsEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/carts",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoreCartsEcommerceResponse.self
        )
    }

    /// Add a new cart to a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStoreCart(
    ///         storeId: "store_id",
    ///         request: .init(
    ///             currencyCode: "currency_code",
    ///             customer: EcommerceStoresCartsPost(
    ///                 id: "id"
    ///             ),
    ///             id: CreateStoreCartEcommerceRequestId.string(
    ///                 "id"
    ///             ),
    ///             lines: [
    ///                 CreateStoreCartEcommerceRequestLinesItem(
    ///                     id: "id",
    ///                     price: CreateStoreCartEcommerceRequestLinesItemPrice.double(
    ///                         1.1
    ///                     ),
    ///                     productId: "product_id",
    ///                     productVariantId: "product_variant_id",
    ///                     quantity: 1
    ///                 )
    ///             ],
    ///             orderTotal: CreateStoreCartEcommerceRequestOrderTotal.double(
    ///                 1.1
    ///             )
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStoreCart(storeId: String, request: Requests.CreateStoreCartEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceCart {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/carts",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceCart.self
        )
    }

    /// Get information about a specific cart.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStoreCart(
    ///         storeId: "store_id",
    ///         cartId: "cart_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter cartId: The id for the cart.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStoreCart(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommerceCart {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/carts/\(cartId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommerceCart.self
        )
    }

    /// Delete a cart.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStoreCart(
    ///         storeId: "store_id",
    ///         cartId: "cart_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter cartId: The id for the cart.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStoreCart(storeId: String, cartId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/carts/\(cartId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific cart.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStoreCart(
    ///         storeId: "store_id",
    ///         cartId: "cart_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter cartId: The id for the cart.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStoreCart(storeId: String, cartId: String, request: Requests.UpdateStoreCartEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceCart {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/carts/\(cartId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceCart.self
        )
    }

    /// Get information about a cart's line items.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStoreCartLines(
    ///         storeId: "store_id",
    ///         cartId: "cart_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter cartId: The id for the cart.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStoreCartLines(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoreCartLinesEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/carts/\(cartId)/lines",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoreCartLinesEcommerceResponse.self
        )
    }

    /// Add a new line item to an existing cart.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStoreCartLine(
    ///         storeId: "store_id",
    ///         cartId: "cart_id",
    ///         request: .init(
    ///             id: "id",
    ///             price: CreateStoreCartLineEcommerceRequestPrice.double(
    ///                 1.1
    ///             ),
    ///             productId: "product_id",
    ///             productVariantId: "product_variant_id",
    ///             quantity: 1
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter cartId: The id for the cart.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStoreCartLine(storeId: String, cartId: String, request: Requests.CreateStoreCartLineEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceCartLineItem {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/carts/\(cartId)/lines",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceCartLineItem.self
        )
    }

    /// Get information about a specific cart line item.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStoreCartLine(
    ///         storeId: "store_id",
    ///         cartId: "cart_id",
    ///         lineId: "line_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter cartId: The id for the cart.
    /// - Parameter lineId: The id for the line item of a cart.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStoreCartLine(storeId: String, cartId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommerceCartLineItem {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/carts/\(cartId)/lines/\(lineId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommerceCartLineItem.self
        )
    }

    /// Delete a specific cart line item.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStoreCartLine(
    ///         storeId: "store_id",
    ///         cartId: "cart_id",
    ///         lineId: "line_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter cartId: The id for the cart.
    /// - Parameter lineId: The id for the line item of a cart.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStoreCartLine(storeId: String, cartId: String, lineId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/carts/\(cartId)/lines/\(lineId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific cart line item.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStoreCartLine(
    ///         storeId: "store_id",
    ///         cartId: "cart_id",
    ///         lineId: "line_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter cartId: The id for the cart.
    /// - Parameter lineId: The id for the line item of a cart.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStoreCartLine(storeId: String, cartId: String, lineId: String, request: Requests.UpdateStoreCartLineEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceCartLineItem {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/carts/\(cartId)/lines/\(lineId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceCartLineItem.self
        )
    }

    /// Get information about a store's customers.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStoreCustomers(storeId: "store_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter emailAddress: Restrict the response to customers with the email address.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStoreCustomers(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailAddress: String? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoreCustomersEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/customers",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "email_address": emailAddress.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoreCustomersEcommerceResponse.self
        )
    }

    /// Add a new customer to a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStoreCustomer(
    ///         storeId: "store_id",
    ///         request: .init(
    ///             id: "id",
    ///             optInStatus: true
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStoreCustomer(storeId: String, request: Requests.CreateStoreCustomerEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceCustomer {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/customers",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceCustomer.self
        )
    }

    /// Get information about a specific customer.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStoreCustomer(
    ///         storeId: "store_id",
    ///         customerId: "customer_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter customerId: The id for the customer of a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStoreCustomer(storeId: String, customerId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommerceCustomer {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/customers/\(customerId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommerceCustomer.self
        )
    }

    /// Add or update a customer.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.upsertStoreCustomer(
    ///         storeId: "store_id",
    ///         customerId: "customer_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter customerId: The id for the customer of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertStoreCustomer(storeId: String, customerId: String, request: Requests.UpsertStoreCustomerEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceCustomer {
        return try await httpClient.performRequest(
            method: .put,
            path: "/3.0/ecommerce/stores/\(storeId)/customers/\(customerId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceCustomer.self
        )
    }

    /// Delete a customer from a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStoreCustomer(
    ///         storeId: "store_id",
    ///         customerId: "customer_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter customerId: The id for the customer of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStoreCustomer(storeId: String, customerId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/customers/\(customerId)",
            requestOptions: requestOptions
        )
    }

    /// Update a customer.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStoreCustomer(
    ///         storeId: "store_id",
    ///         customerId: "customer_id",
    ///         request: EcommerceStoresCartsPatch(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter customerId: The id for the customer of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStoreCustomer(storeId: String, customerId: String, request: EcommerceStoresCartsPatch, requestOptions: RequestOptions? = nil) async throws -> ECommerceCustomer {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/customers/\(customerId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceCustomer.self
        )
    }

    /// Get information about a store's orders.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStoreOrders(storeId: "store_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter customerId: Restrict results to orders made by a specific customer.
    /// - Parameter hasOutreach: Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad.
    /// - Parameter campaignId: Restrict results to orders with a specific `campaign_id` value.
    /// - Parameter outreachId: Restrict results to orders with a specific `outreach_id` value.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStoreOrders(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, customerId: String? = nil, hasOutreach: Bool? = nil, campaignId: String? = nil, outreachId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoreOrdersEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/orders",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "customer_id": customerId.map { .string($0) }, 
                "has_outreach": hasOutreach.map { .bool($0) }, 
                "campaign_id": campaignId.map { .string($0) }, 
                "outreach_id": outreachId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoreOrdersEcommerceResponse.self
        )
    }

    /// Add a new order to a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStoreOrder(
    ///         storeId: "store_id",
    ///         request: .init(
    ///             currencyCode: "currency_code",
    ///             customer: EcommerceStoresCartsPost(
    ///                 id: "id"
    ///             ),
    ///             id: "id",
    ///             lines: [
    ///                 CreateStoreOrderEcommerceRequestLinesItem(
    ///                     id: "id",
    ///                     price: CreateStoreOrderEcommerceRequestLinesItemPrice.double(
    ///                         1.1
    ///                     ),
    ///                     productId: "product_id",
    ///                     productVariantId: "product_variant_id",
    ///                     quantity: 1
    ///                 )
    ///             ],
    ///             orderTotal: CreateStoreOrderEcommerceRequestOrderTotal.double(
    ///                 1.1
    ///             )
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStoreOrder(storeId: String, request: Requests.CreateStoreOrderEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceOrder {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/orders",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceOrder.self
        )
    }

    /// Get information about a specific order.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStoreOrder(
    ///         storeId: "store_id",
    ///         orderId: "order_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter orderId: The id for the order in a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStoreOrder(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommerceOrder {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/orders/\(orderId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommerceOrder.self
        )
    }

    /// Delete an order.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStoreOrder(
    ///         storeId: "store_id",
    ///         orderId: "order_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter orderId: The id for the order in a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStoreOrder(storeId: String, orderId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/orders/\(orderId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific order.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStoreOrder(
    ///         storeId: "store_id",
    ///         orderId: "order_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter orderId: The id for the order in a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStoreOrder(storeId: String, orderId: String, request: Requests.UpdateStoreOrderEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceOrder {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/orders/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceOrder.self
        )
    }

    /// Get information about an order's line items.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStoreOrderLines(
    ///         storeId: "store_id",
    ///         orderId: "order_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter orderId: The id for the order in a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStoreOrderLines(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoreOrderLinesEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/orders/\(orderId)/lines",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoreOrderLinesEcommerceResponse.self
        )
    }

    /// Add a new line item to an existing order.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStoreOrderLine(
    ///         storeId: "store_id",
    ///         orderId: "order_id",
    ///         request: .init(
    ///             id: "id",
    ///             price: CreateStoreOrderLineEcommerceRequestPrice.double(
    ///                 1.1
    ///             ),
    ///             productId: "product_id",
    ///             productVariantId: "product_variant_id",
    ///             quantity: 1
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter orderId: The id for the order in a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStoreOrderLine(storeId: String, orderId: String, request: Requests.CreateStoreOrderLineEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceOrderLineItem {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/orders/\(orderId)/lines",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceOrderLineItem.self
        )
    }

    /// Get information about a specific order line item.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStoreOrderLine(
    ///         storeId: "store_id",
    ///         orderId: "order_id",
    ///         lineId: "line_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter orderId: The id for the order in a store.
    /// - Parameter lineId: The id for the line item of an order.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStoreOrderLine(storeId: String, orderId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommerceOrderLineItem {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/orders/\(orderId)/lines/\(lineId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommerceOrderLineItem.self
        )
    }

    /// Delete a specific order line item.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStoreOrderLine(
    ///         storeId: "store_id",
    ///         orderId: "order_id",
    ///         lineId: "line_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter orderId: The id for the order in a store.
    /// - Parameter lineId: The id for the line item of an order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStoreOrderLine(storeId: String, orderId: String, lineId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/orders/\(orderId)/lines/\(lineId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific order line item.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStoreOrderLine(
    ///         storeId: "store_id",
    ///         orderId: "order_id",
    ///         lineId: "line_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter orderId: The id for the order in a store.
    /// - Parameter lineId: The id for the line item of an order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStoreOrderLine(storeId: String, orderId: String, lineId: String, request: Requests.UpdateStoreOrderLineEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceOrderLineItem {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/orders/\(orderId)/lines/\(lineId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceOrderLineItem.self
        )
    }

    /// Get information about a store's products.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStoreProducts(storeId: "store_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStoreProducts(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoreProductsEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/products",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoreProductsEcommerceResponse.self
        )
    }

    /// Add a new product to a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStoreProduct(
    ///         storeId: "store_id",
    ///         request: EcommerceStoresOrdersPost(
    ///             id: EcommerceStoresOrdersPostId.string(
    ///                 "id"
    ///             ),
    ///             title: "Cat Hat",
    ///             variants: [
    ///                 EcommerceStoresOrdersPostVariantsItem(
    ///                     id: EcommerceStoresOrdersPostVariantsItemId.string(
    ///                         "id"
    ///                     ),
    ///                     title: "Cat Hat"
    ///                 )
    ///             ]
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStoreProduct(storeId: String, request: EcommerceStoresOrdersPost, requestOptions: RequestOptions? = nil) async throws -> ECommerceProduct {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/products",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceProduct.self
        )
    }

    /// Get information about a specific product.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStoreProduct(
    ///         storeId: "store_id",
    ///         productId: "product_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStoreProduct(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommerceProduct {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommerceProduct.self
        )
    }

    /// Update a specific product.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.upsertStoreProduct(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         request: .init(id: UpsertStoreProductEcommerceRequestId.string(
    ///             "id"
    ///         ))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertStoreProduct(storeId: String, productId: String, request: Requests.UpsertStoreProductEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceProduct {
        return try await httpClient.performRequest(
            method: .put,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceProduct.self
        )
    }

    /// Delete a product.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStoreProduct(
    ///         storeId: "store_id",
    ///         productId: "product_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStoreProduct(storeId: String, productId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific product.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStoreProduct(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStoreProduct(storeId: String, productId: String, request: Requests.UpdateStoreProductEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceProduct {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceProduct.self
        )
    }

    /// Get information about a product's images.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStoreProductImages(
    ///         storeId: "store_id",
    ///         productId: "product_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStoreProductImages(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoreProductImagesEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/images",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoreProductImagesEcommerceResponse.self
        )
    }

    /// Add a new image to the product.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStoreProductImage(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         request: .init(
    ///             id: "id",
    ///             url: "url"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStoreProductImage(storeId: String, productId: String, request: Requests.CreateStoreProductImageEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> CreateStoreProductImageEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/images",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateStoreProductImageEcommerceResponse.self
        )
    }

    /// Get information about a specific product image.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStoreProductImage(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         imageId: "image_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter imageId: The id for the product image.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStoreProductImage(storeId: String, productId: String, imageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> GetStoreProductImageEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/images/\(imageId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: GetStoreProductImageEcommerceResponse.self
        )
    }

    /// Delete a product image.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStoreProductImage(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         imageId: "image_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter imageId: The id for the product image.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStoreProductImage(storeId: String, productId: String, imageId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/images/\(imageId)",
            requestOptions: requestOptions
        )
    }

    /// Update a product image.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStoreProductImage(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         imageId: "image_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter imageId: The id for the product image.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStoreProductImage(storeId: String, productId: String, imageId: String, request: Requests.UpdateStoreProductImageEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateStoreProductImageEcommerceResponse {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/images/\(imageId)",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateStoreProductImageEcommerceResponse.self
        )
    }

    /// Get information about a product's variants.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStoreProductVariants(
    ///         storeId: "store_id",
    ///         productId: "product_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStoreProductVariants(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStoreProductVariantsEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/variants",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStoreProductVariantsEcommerceResponse.self
        )
    }

    /// Add a new variant to the product.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStoreProductVariant(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         request: .init(
    ///             id: CreateStoreProductVariantEcommerceRequestId.string(
    ///                 "id"
    ///             ),
    ///             title: "Cat Hat"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStoreProductVariant(storeId: String, productId: String, request: Requests.CreateStoreProductVariantEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceProductVariant {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/variants",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceProductVariant.self
        )
    }

    /// Get information about a specific product variant.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStoreProductVariant(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         variantId: "variant_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter variantId: The id for the product variant.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStoreProductVariant(storeId: String, productId: String, variantId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommerceProductVariant {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/variants/\(variantId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommerceProductVariant.self
        )
    }

    /// Add or update a product variant.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.upsertStoreProductVariant(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         variantId: "variant_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter variantId: The id for the product variant.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertStoreProductVariant(storeId: String, productId: String, variantId: String, request: Requests.UpsertStoreProductVariantEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceProductVariant {
        return try await httpClient.performRequest(
            method: .put,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/variants/\(variantId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceProductVariant.self
        )
    }

    /// Delete a product variant.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStoreProductVariant(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         variantId: "variant_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter variantId: The id for the product variant.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStoreProductVariant(storeId: String, productId: String, variantId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/variants/\(variantId)",
            requestOptions: requestOptions
        )
    }

    /// Update a product variant.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStoreProductVariant(
    ///         storeId: "store_id",
    ///         productId: "product_id",
    ///         variantId: "variant_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter productId: The id for the product of a store.
    /// - Parameter variantId: The id for the product variant.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStoreProductVariant(storeId: String, productId: String, variantId: String, request: Requests.UpdateStoreProductVariantEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommerceProductVariant {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/products/\(productId)/variants/\(variantId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommerceProductVariant.self
        )
    }

    /// Get information about a store's promo rules.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStorePromoRules(storeId: "store_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStorePromoRules(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStorePromoRulesEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStorePromoRulesEcommerceResponse.self
        )
    }

    /// Add a new promo rule to a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStorePromoRule(
    ///         storeId: "store_id",
    ///         request: .init(
    ///             amount: CreateStorePromoRuleEcommerceRequestAmount.double(
    ///                 1.1
    ///             ),
    ///             description: "Save BIG during our summer sale!",
    ///             id: "id",
    ///             target: .perItem,
    ///             type: .fixed
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStorePromoRule(storeId: String, request: Requests.CreateStorePromoRuleEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommercePromoRule {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommercePromoRule.self
        )
    }

    /// Get information about a specific promo rule.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStorePromoRule(
    ///         storeId: "store_id",
    ///         promoRuleId: "promo_rule_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter promoRuleId: The id for the promo rule of a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStorePromoRule(storeId: String, promoRuleId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommercePromoRule {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules/\(promoRuleId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommercePromoRule.self
        )
    }

    /// Delete a promo rule from a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStorePromoRule(
    ///         storeId: "store_id",
    ///         promoRuleId: "promo_rule_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter promoRuleId: The id for the promo rule of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStorePromoRule(storeId: String, promoRuleId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules/\(promoRuleId)",
            requestOptions: requestOptions
        )
    }

    /// Update a promo rule.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStorePromoRule(
    ///         storeId: "store_id",
    ///         promoRuleId: "promo_rule_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter promoRuleId: The id for the promo rule of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStorePromoRule(storeId: String, promoRuleId: String, request: Requests.UpdateStorePromoRuleEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommercePromoRule {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules/\(promoRuleId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommercePromoRule.self
        )
    }

    /// Get information about a store's promo codes.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.listStorePromoRulePromoCodes(
    ///         storeId: "store_id",
    ///         promoRuleId: "promo_rule_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter promoRuleId: The id for the promo rule of a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listStorePromoRulePromoCodes(storeId: String, promoRuleId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListStorePromoRulePromoCodesEcommerceResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules/\(promoRuleId)/promo-codes",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListStorePromoRulePromoCodesEcommerceResponse.self
        )
    }

    /// Add a new promo code to a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.createStorePromoRulePromoCode(
    ///         storeId: "store_id",
    ///         promoRuleId: "promo_rule_id",
    ///         request: .init(
    ///             code: "summersale",
    ///             id: "id",
    ///             redemptionUrl: "A url that applies promo code directly at checkout or a url that points to sale page or store url"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter promoRuleId: The id for the promo rule of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createStorePromoRulePromoCode(storeId: String, promoRuleId: String, request: Requests.CreateStorePromoRulePromoCodeEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommercePromoCode {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules/\(promoRuleId)/promo-codes",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommercePromoCode.self
        )
    }

    /// Get information about a specific promo code.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.getStorePromoRulePromoCode(
    ///         storeId: "store_id",
    ///         promoRuleId: "promo_rule_id",
    ///         promoCodeId: "promo_code_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter promoRuleId: The id for the promo rule of a store.
    /// - Parameter promoCodeId: The id for the promo code of a store.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStorePromoRulePromoCode(storeId: String, promoRuleId: String, promoCodeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ECommercePromoCode {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules/\(promoRuleId)/promo-codes/\(promoCodeId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ECommercePromoCode.self
        )
    }

    /// Delete a promo code from a store.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.deleteStorePromoRulePromoCode(
    ///         storeId: "store_id",
    ///         promoRuleId: "promo_rule_id",
    ///         promoCodeId: "promo_code_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter promoRuleId: The id for the promo rule of a store.
    /// - Parameter promoCodeId: The id for the promo code of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteStorePromoRulePromoCode(storeId: String, promoRuleId: String, promoCodeId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules/\(promoRuleId)/promo-codes/\(promoCodeId)",
            requestOptions: requestOptions
        )
    }

    /// Update a promo code.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.ecommerce.updateStorePromoRulePromoCode(
    ///         storeId: "store_id",
    ///         promoRuleId: "promo_rule_id",
    ///         promoCodeId: "promo_code_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter storeId: The store id.
    /// - Parameter promoRuleId: The id for the promo rule of a store.
    /// - Parameter promoCodeId: The id for the promo code of a store.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStorePromoRulePromoCode(storeId: String, promoRuleId: String, promoCodeId: String, request: Requests.UpdateStorePromoRulePromoCodeEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ECommercePromoCode {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/ecommerce/stores/\(storeId)/promo-rules/\(promoRuleId)/promo-codes/\(promoCodeId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ECommercePromoCode.self
        )
    }
}