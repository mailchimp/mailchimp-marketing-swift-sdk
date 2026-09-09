import Foundation

public final class LandingPagesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all landing pages.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.landingPages.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(sortDir: ListLandingPagesRequestSortDir? = nil, sortField: ListLandingPagesRequestSortField? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListLandingPagesResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/landing-pages",
            queryParams: [
                "sort_dir": sortDir.map { .string($0.rawValue) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListLandingPagesResponse.self
        )
    }

    /// Create an unpublished and contentless Mailchimp landing page.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.landingPages.create(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter useDefaultList: Will create the Landing Page using the account's Default List instead of requiring a list_id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(useDefaultList: Bool? = nil, request: Requests.CreateLandingPagesRequest, requestOptions: RequestOptions? = nil) async throws -> LandingPage {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/landing-pages",
            queryParams: [
                "use_default_list": useDefaultList.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: LandingPage.self
        )
    }

    /// Get information about a specific page.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.landingPages.get(pageId: "page_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter pageId: The unique id for the page.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> LandingPage {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/landing-pages/\(pageId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: LandingPage.self
        )
    }

    /// Delete a landing page.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.landingPages.delete(pageId: "page_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter pageId: The unique id for the page.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(pageId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/landing-pages/\(pageId)",
            requestOptions: requestOptions
        )
    }

    /// Update a landing page.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.landingPages.update(
    ///         pageId: "page_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter pageId: The unique id for the page.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(pageId: String, request: Requests.UpdateLandingPagesRequest, requestOptions: RequestOptions? = nil) async throws -> LandingPage {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/landing-pages/\(pageId)",
            body: request,
            requestOptions: requestOptions,
            responseType: LandingPage.self
        )
    }

    /// Publish a landing page that is in draft, unpublished, or has been previously published and edited.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.landingPages.createActionPublish(pageId: "page_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter pageId: The unique id for the page.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionPublish(pageId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/landing-pages/\(pageId)/actions/publish",
            requestOptions: requestOptions
        )
    }

    /// Unpublish a landing page that is in draft or has been published.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.landingPages.createActionUnpublish(pageId: "page_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter pageId: The unique id for the page.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionUnpublish(pageId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/landing-pages/\(pageId)/actions/unpublish",
            requestOptions: requestOptions
        )
    }

    /// Get the the HTML for your landing page.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.landingPages.listContent(pageId: "page_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter pageId: The unique id for the page.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listContent(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListContentLandingPagesResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/landing-pages/\(pageId)/content",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListContentLandingPagesResponse.self
        )
    }
}