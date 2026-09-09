import Foundation

public final class ReportsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get campaign reports.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter type: The campaign type.
    /// - Parameter beforeSendTime: Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceSendTime: Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: ListReportsRequestType? = nil, beforeSendTime: Date? = nil, sinceSendTime: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ListReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "type": type.map { .string($0.rawValue) }, 
                "before_send_time": beforeSendTime.map { .date($0) }, 
                "since_send_time": sinceSendTime.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListReportsResponse.self
        )
    }

    /// Get report details for a specific sent campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.get(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> CampaignReport {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: CampaignReport.self
        )
    }

    /// Get a list of abuse complaints for a specific campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listAbuseReports(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listAbuseReports(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListAbuseReportsReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/abuse-reports",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListAbuseReportsReportsResponse.self
        )
    }

    /// Get information about a specific abuse report for a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.getAbuseReport(
    ///         campaignId: "campaign_id",
    ///         reportId: "report_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter reportId: The id for the abuse report.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAbuseReport(campaignId: String, reportId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> AbuseComplaint {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/abuse-reports/\(reportId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: AbuseComplaint.self
        )
    }

    /// Get feedback based on a campaign's statistics. Advice feedback is based on campaign stats like opens, clicks, unsubscribes, bounces, and more.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listAdvice(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listAdvice(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListAdviceReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/advice",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListAdviceReportsResponse.self
        )
    }

    /// Get information about clicks on specific links in your Mailchimp campaigns.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listClickDetails(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter sortField: Returns click reports sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter filterBots: When true, exclude automated bot clicks so the returned click counts reflect human clicks only, matching the in-app Recipient Activity view. Filtering changes a link's counts, but never removes a link from the response. Defaults to false (all clicks).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listClickDetails(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: ListClickDetailsReportsRequestSortField? = nil, sortDir: ListClickDetailsReportsRequestSortDir? = nil, filterBots: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ListClickDetailsReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/click-details",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }, 
                "filter_bots": filterBots.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListClickDetailsReportsResponse.self
        )
    }

    /// Get click details for a specific link in a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.getClickDetail(
    ///         campaignId: "campaign_id",
    ///         linkId: "link_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter linkId: The id for the link.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter filterBots: When true, exclude automated bot clicks so the returned click counts reflect human clicks only, matching the in-app Recipient Activity view. Filtering changes a link's counts, but never removes a link from the response. Defaults to false (all clicks).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getClickDetail(campaignId: String, linkId: String, fields: [String]? = nil, excludeFields: [String]? = nil, filterBots: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ClickDetailReport {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/click-details/\(linkId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "filter_bots": filterBots.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ClickDetailReport.self
        )
    }

    /// Get information about list members who clicked on a specific link in a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listClickDetailMembers(
    ///         campaignId: "campaign_id",
    ///         linkId: "link_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter linkId: The id for the link.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listClickDetailMembers(campaignId: String, linkId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListClickDetailMembersReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/click-details/\(linkId)/members",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListClickDetailMembersReportsResponse.self
        )
    }

    /// Get information about a specific subscriber who clicked a link in a specific campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.getClickDetailMember(
    ///         campaignId: "campaign_id",
    ///         linkId: "link_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter linkId: The id for the link.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getClickDetailMember(campaignId: String, linkId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ClickDetailMember {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/click-details/\(linkId)/members/\(subscriberHash)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ClickDetailMember.self
        )
    }

    /// Get statistics for the top-performing email domains in a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listDomainPerformance(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listDomainPerformance(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListDomainPerformanceReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/domain-performance",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListDomainPerformanceReportsResponse.self
        )
    }

    /// Get breakdown of product activity for a campaign
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listEcommerceProductActivity(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listEcommerceProductActivity(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: ListEcommerceProductActivityReportsRequestSortField? = nil, requestOptions: RequestOptions? = nil) async throws -> ListEcommerceProductActivityReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/ecommerce-product-activity",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListEcommerceProductActivityReportsResponse.self
        )
    }

    /// Get a summary of social activity for the campaign, tracked by EepURL.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listEepurl(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listEepurl(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListEepurlReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/eepurl",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListEepurlReportsResponse.self
        )
    }

    /// Get a list of member's subscriber activity in a specific campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listEmailActivity(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter since: Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter filterBots: When true, exclude automated bot and Apple Mail Privacy Protection (MPP) proxy activity so the returned activity reflects human-only opens and clicks, matching the in-app Recipient Activity view. Filtering removes events from a member's activity, but never removes the member from the response. Defaults to false (all activity).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listEmailActivity(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, since: String? = nil, filterBots: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ListEmailActivityReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/email-activity",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "since": since.map { .string($0) }, 
                "filter_bots": filterBots.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListEmailActivityReportsResponse.self
        )
    }

    /// Get a specific list member's activity in a campaign including opens, clicks, and bounces.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.getEmailActivity(
    ///         campaignId: "campaign_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter since: Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter filterBots: When true, exclude automated bot and Apple Mail Privacy Protection (MPP) proxy activity so the returned activity reflects human-only opens and clicks, matching the in-app Recipient Activity view. Filtering removes events from a member's activity, but never removes the member from the response. Defaults to false (all activity).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getEmailActivity(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, since: String? = nil, filterBots: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> EmailActivity {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/email-activity/\(subscriberHash)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "since": since.map { .string($0) }, 
                "filter_bots": filterBots.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: EmailActivity.self
        )
    }

    /// Get top open locations for a specific campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listLocations(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listLocations(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListLocationsReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/locations",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListLocationsReportsResponse.self
        )
    }

    /// Get detailed information about any campaign emails that were opened by a list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listOpenDetails(
    ///         campaignId: "campaign_id",
    ///         since: "2016-04-12 12:00:00"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter since: Restrict results to campaign open events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sortField: Returns open reports sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter filterBots: When true, exclude automated (proxy/bot) opens so the returned open counts reflect human opens only, matching the in-app Recipient Activity view. A member whose opens are all automated is excluded from the human-only view. Defaults to false (all opens).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listOpenDetails(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, since: String? = nil, sortField: ListOpenDetailsReportsRequestSortField? = nil, sortDir: ListOpenDetailsReportsRequestSortDir? = nil, filterBots: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ListOpenDetailsReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/open-details",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "since": since.map { .string($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }, 
                "filter_bots": filterBots.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListOpenDetailsReportsResponse.self
        )
    }

    /// Get information about a specific subscriber who opened a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.getOpenDetail(
    ///         campaignId: "campaign_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter filterBots: When true, exclude automated (proxy/bot) opens so the returned open counts reflect human opens only, matching the in-app Recipient Activity view. A member whose opens are all automated is excluded from the human-only view. Defaults to false (all opens).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getOpenDetail(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, filterBots: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> OpenActivity {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/open-details/\(subscriberHash)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "filter_bots": filterBots.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: OpenActivity.self
        )
    }

    /// Get information about campaign recipients.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listSentTo(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSentTo(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSentToReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/sent-to",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListSentToReportsResponse.self
        )
    }

    /// Get information about a specific campaign recipient.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.getSentTo(
    ///         campaignId: "campaign_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSentTo(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> SentTo {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/sent-to/\(subscriberHash)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: SentTo.self
        )
    }

    /// Get a list of reports with child campaigns for a specific parent campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listSubReports(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSubReports(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSubReportsReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/sub-reports",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListSubReportsReportsResponse.self
        )
    }

    /// Get information about members who have unsubscribed from a specific campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.listUnsubscribed(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listUnsubscribed(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListUnsubscribedReportsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/unsubscribed",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListUnsubscribedReportsResponse.self
        )
    }

    /// Get information about a specific list member who unsubscribed from a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reports.getUnsubscribed(
    ///         campaignId: "campaign_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getUnsubscribed(campaignId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> Unsubscribes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reports/\(campaignId)/unsubscribed/\(subscriberHash)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: Unsubscribes.self
        )
    }
}