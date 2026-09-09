import Foundation

public final class ActivityFeedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get information about the activity feed endpoint's resources.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.activityFeed.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> [ListActivityFeedResponseItem] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/activity-feed",
            requestOptions: requestOptions,
            responseType: [ListActivityFeedResponseItem].self
        )
    }

    /// Return the Chimp Chatter for this account ordered by most recent.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.activityFeed.listChimpChatter()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listChimpChatter(count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListChimpChatterActivityFeedResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/activity-feed/chimp-chatter",
            queryParams: [
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListChimpChatterActivityFeedResponse.self
        )
    }
}