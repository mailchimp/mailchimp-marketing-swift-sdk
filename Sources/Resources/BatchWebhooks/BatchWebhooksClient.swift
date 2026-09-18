import Foundation

public final class BatchWebhooksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all webhooks that have been configured for batches.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.batchWebhooks.list()
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
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListBatchWebhooksResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/batch-webhooks",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListBatchWebhooksResponse.self
        )
    }

    /// Configure a webhook that will fire whenever any batch request completes processing.  You may only have a maximum of 20 batch webhooks.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.batchWebhooks.create(request: .init(url: "http://yourdomain.com/webhook"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateBatchWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> CreateBatchWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/batch-webhooks",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateBatchWebhooksResponse.self
        )
    }

    /// Get information about a specific batch webhook.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.batchWebhooks.get(batchWebhookId: "batch_webhook_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter batchWebhookId: The unique id for the batch webhook.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(batchWebhookId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> BatchWebhook {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/batch-webhooks/\(batchWebhookId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: BatchWebhook.self
        )
    }

    /// Remove a batch webhook. Webhooks will no longer be sent to the given URL.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.batchWebhooks.delete(batchWebhookId: "batch_webhook_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter batchWebhookId: The unique id for the batch webhook.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(batchWebhookId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/batch-webhooks/\(batchWebhookId)",
            requestOptions: requestOptions
        )
    }

    /// Update a webhook that will fire whenever any batch request completes processing.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.batchWebhooks.update(
    ///         batchWebhookId: "batch_webhook_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter batchWebhookId: The unique id for the batch webhook.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(batchWebhookId: String, request: Requests.UpdateBatchWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> BatchWebhook {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/batch-webhooks/\(batchWebhookId)",
            body: request,
            requestOptions: requestOptions,
            responseType: BatchWebhook.self
        )
    }
}