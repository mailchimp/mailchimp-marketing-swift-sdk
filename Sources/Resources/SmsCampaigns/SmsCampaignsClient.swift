import Foundation

public final class SmsCampaignsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all SMS campaigns in an account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.list()
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
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSmsCampaignsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/sms-campaigns",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListSmsCampaignsResponse.self
        )
    }

    /// Create a new SMS campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.create(request: .init(name: "name"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateSmsCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> SmsCampaign {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/sms-campaigns",
            body: request,
            requestOptions: requestOptions,
            responseType: SmsCampaign.self
        )
    }

    /// Get the details for a single SMS campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.get(smsCampaignId: "sms_campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter smsCampaignId: The unique id for the SMS campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(smsCampaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> SmsCampaign {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/sms-campaigns/\(smsCampaignId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: SmsCampaign.self
        )
    }

    /// Remove a campaign from your Mailchimp account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.delete(smsCampaignId: "sms_campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter smsCampaignId: The unique id for the SMS campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(smsCampaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/sms-campaigns/\(smsCampaignId)",
            requestOptions: requestOptions
        )
    }

    /// Update an SMS campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.update(
    ///         smsCampaignId: "sms_campaign_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter smsCampaignId: The unique id for the SMS campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(smsCampaignId: String, request: Requests.UpdateSmsCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> SmsCampaign {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/sms-campaigns/\(smsCampaignId)",
            body: request,
            requestOptions: requestOptions,
            responseType: SmsCampaign.self
        )
    }

    /// Cancel a scheduled or sending SMS campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.createActionCancelSend(smsCampaignId: "sms_campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter smsCampaignId: The unique id for the SMS campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionCancelSend(smsCampaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/sms-campaigns/\(smsCampaignId)/actions/cancel-send",
            requestOptions: requestOptions
        )
    }

    /// Schedule an SMS campaign for delivery.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.createActionSchedule(
    ///         smsCampaignId: "sms_campaign_id",
    ///         request: .init(scheduleTime: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter smsCampaignId: The unique id for the SMS campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionSchedule(smsCampaignId: String, request: Requests.CreateActionScheduleSmsCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/sms-campaigns/\(smsCampaignId)/actions/schedule",
            body: request,
            requestOptions: requestOptions
        )
    }

    /// Send an SMS campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.createActionSend(smsCampaignId: "sms_campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter smsCampaignId: The unique id for the SMS campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionSend(smsCampaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/sms-campaigns/\(smsCampaignId)/actions/send",
            requestOptions: requestOptions
        )
    }

    /// Get the content for an SMS campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.getContent(smsCampaignId: "sms_campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter smsCampaignId: The unique id for the SMS campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getContent(smsCampaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> SmsCampaignContent {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/sms-campaigns/\(smsCampaignId)/content",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: SmsCampaignContent.self
        )
    }

    /// Set the content for an SMS campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.smsCampaigns.upsertContent(
    ///         smsCampaignId: "sms_campaign_id",
    ///         request: .init(messageBody: "message_body")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter smsCampaignId: The unique id for the SMS campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertContent(smsCampaignId: String, request: Requests.UpsertContentSmsCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> SmsCampaignContent {
        return try await httpClient.performRequest(
            method: .put,
            path: "/3.0/sms-campaigns/\(smsCampaignId)/content",
            body: request,
            requestOptions: requestOptions,
            responseType: SmsCampaignContent.self
        )
    }
}