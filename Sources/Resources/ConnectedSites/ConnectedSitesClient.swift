import Foundation

public final class ConnectedSitesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all connected sites in an account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.connectedSites.list()
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
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListConnectedSitesResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/connected-sites",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListConnectedSitesResponse.self
        )
    }

    /// Create a new Mailchimp connected site.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.connectedSites.create(request: .init(
    ///         domain: "example.com",
    ///         foreignId: "MC001"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateConnectedSitesRequest, requestOptions: RequestOptions? = nil) async throws -> ConnectedSite {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/connected-sites",
            body: request,
            requestOptions: requestOptions,
            responseType: ConnectedSite.self
        )
    }

    /// Get information about a specific connected site.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.connectedSites.get(connectedSiteId: "connected_site_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter connectedSiteId: The unique identifier for the site.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(connectedSiteId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ConnectedSite {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/connected-sites/\(connectedSiteId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ConnectedSite.self
        )
    }

    /// Remove a connected site from your Mailchimp account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.connectedSites.delete(connectedSiteId: "connected_site_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter connectedSiteId: The unique identifier for the site.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(connectedSiteId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/connected-sites/\(connectedSiteId)",
            requestOptions: requestOptions
        )
    }

    /// Verify that the connected sites script has been installed, either via the script URL or fragment.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.connectedSites.createActionVerifyScriptInstallation(connectedSiteId: "connected_site_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter connectedSiteId: The unique identifier for the site.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionVerifyScriptInstallation(connectedSiteId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/connected-sites/\(connectedSiteId)/actions/verify-script-installation",
            requestOptions: requestOptions
        )
    }
}