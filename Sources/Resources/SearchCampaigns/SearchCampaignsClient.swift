import Foundation

public final class SearchCampaignsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Search all campaigns for the specified query terms.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.searchCampaigns.list(query: "query")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter query: The search query used to filter results.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, query: String, requestOptions: RequestOptions? = nil) async throws -> ListSearchCampaignsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/search-campaigns",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "query": .string(query)
            ],
            requestOptions: requestOptions,
            responseType: ListSearchCampaignsResponse.self
        )
    }
}