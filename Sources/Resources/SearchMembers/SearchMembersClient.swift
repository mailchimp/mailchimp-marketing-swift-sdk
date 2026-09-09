import Foundation

public final class SearchMembersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Search for list members. This search can be restricted to a specific list, or can be used to search across all lists in an account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.searchMembers.list(query: "query")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter query: The search query used to filter results. Query should be a valid email, or a string representing a contact's first or last name.
    /// - Parameter listId: The unique id for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, query: String, listId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSearchMembersResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/search-members",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "query": .string(query), 
                "list_id": listId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListSearchMembersResponse.self
        )
    }
}