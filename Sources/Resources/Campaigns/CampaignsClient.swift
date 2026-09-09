import Foundation

public final class CampaignsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all campaigns in an account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.list()
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
    /// - Parameter status: The status of the campaign.
    /// - Parameter beforeSendTime: Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceSendTime: Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter beforeCreateTime: Restrict the response to campaigns created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceCreateTime: Restrict the response to campaigns created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter listId: The unique id for the list.
    /// - Parameter folderId: The unique folder id.
    /// - Parameter memberId: Retrieve campaigns sent to a particular list member. Member ID is The MD5 hash of the lowercase version of the list member’s email address.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter includeResendShortcutEligibility: Return the `resend_shortcut_eligibility` field in the response, which tells you if the campaign is eligible for the various Campaign Resend Shortcuts offered.
    /// - Parameter includeResendShortcutUsage: Return the `resend_shortcut_usage` field in the response.  This includes information about campaigns related by a shortcut.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: ListCampaignsRequestType? = nil, status: ListCampaignsRequestStatus? = nil, beforeSendTime: Date? = nil, sinceSendTime: Date? = nil, beforeCreateTime: Date? = nil, sinceCreateTime: Date? = nil, listId: String? = nil, folderId: String? = nil, memberId: String? = nil, sortField: ListCampaignsRequestSortField? = nil, sortDir: ListCampaignsRequestSortDir? = nil, includeResendShortcutEligibility: Bool? = nil, includeResendShortcutUsage: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ListCampaignsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/campaigns",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "type": type.map { .string($0.rawValue) }, 
                "status": status.map { .string($0.rawValue) }, 
                "before_send_time": beforeSendTime.map { .date($0) }, 
                "since_send_time": sinceSendTime.map { .date($0) }, 
                "before_create_time": beforeCreateTime.map { .date($0) }, 
                "since_create_time": sinceCreateTime.map { .date($0) }, 
                "list_id": listId.map { .string($0) }, 
                "folder_id": folderId.map { .string($0) }, 
                "member_id": memberId.map { .string($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }, 
                "include_resend_shortcut_eligibility": includeResendShortcutEligibility.map { .bool($0) }, 
                "include_resend_shortcut_usage": includeResendShortcutUsage.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListCampaignsResponse.self
        )
    }

    /// Create a new Mailchimp campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.create(request: .init(type: .regular))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> Campaign {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns",
            body: request,
            requestOptions: requestOptions,
            responseType: Campaign.self
        )
    }

    /// Get information about a specific campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.get(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter includeResendShortcutEligibility: Return the `resend_shortcut_eligibility` field in the response, which tells you if the campaign is eligible for the various Campaign Resend Shortcuts offered.
    /// - Parameter includeResendShortcutUsage: Return the `resend_shortcut_usage` field in the response.  This includes information about campaigns related by a shortcut.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeResendShortcutEligibility: Bool? = nil, includeResendShortcutUsage: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> Campaign {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/campaigns/\(campaignId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "include_resend_shortcut_eligibility": includeResendShortcutEligibility.map { .bool($0) }, 
                "include_resend_shortcut_usage": includeResendShortcutUsage.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: Campaign.self
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
    ///     _ = try await client.campaigns.delete(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(campaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/campaigns/\(campaignId)",
            requestOptions: requestOptions
        )
    }

    /// Update some or all of the settings for a specific campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.update(
    ///         campaignId: "campaign_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(campaignId: String, request: Requests.UpdateCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> Campaign {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/campaigns/\(campaignId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Campaign.self
        )
    }

    /// Cancel a Regular or Plain-Text Campaign after you send, before all of your recipients receive it. This feature is included with Mailchimp Pro.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionCancelSend(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionCancelSend(campaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/cancel-send",
            requestOptions: requestOptions
        )
    }

    /// Remove the guesswork for resending a campaign to certain segments. You can use this endpoint as a shortcut to replicate a campaign and resend it to common segments, such as those who didn't open the campaign, or any new subscribers since it was sent.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionCreateResend(
    ///         campaignId: "campaign_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionCreateResend(campaignId: String, request: Requests.CreateActionCreateResendCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> Campaign {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/create-resend",
            body: request,
            requestOptions: requestOptions,
            responseType: Campaign.self
        )
    }

    /// Pause an RSS-Driven campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionPause(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionPause(campaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/pause",
            requestOptions: requestOptions
        )
    }

    /// Replicate a campaign in saved or send status.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionReplicate(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionReplicate(campaignId: String, requestOptions: RequestOptions? = nil) async throws -> Campaign {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/replicate",
            requestOptions: requestOptions,
            responseType: Campaign.self
        )
    }

    /// Resume an RSS-Driven campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionResume(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionResume(campaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/resume",
            requestOptions: requestOptions
        )
    }

    /// Schedule a campaign for delivery. If you're using Multivariate Campaigns to test send times or sending RSS Campaigns, use the send action instead.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionSchedule(
    ///         campaignId: "campaign_id",
    ///         request: .init(scheduleTime: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionSchedule(campaignId: String, request: Requests.CreateActionScheduleCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/schedule",
            body: request,
            requestOptions: requestOptions
        )
    }

    /// Send a Mailchimp campaign. For RSS Campaigns, the campaign will send according to its schedule. All other campaigns will send immediately.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionSend(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionSend(campaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/send",
            requestOptions: requestOptions
        )
    }

    /// Send a test email.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionTest(
    ///         campaignId: "campaign_id",
    ///         request: .init(
    ///             sendType: .html,
    ///             testEmails: [
    ///                 "test_emails"
    ///             ]
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionTest(campaignId: String, request: Requests.CreateActionTestCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/test",
            body: request,
            requestOptions: requestOptions
        )
    }

    /// Unschedule a scheduled campaign that hasn't started sending.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createActionUnschedule(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionUnschedule(campaignId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/actions/unschedule",
            requestOptions: requestOptions
        )
    }

    /// Get the the HTML and plain-text content for a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.getContent(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getContent(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> CampaignContent {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/campaigns/\(campaignId)/content",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: CampaignContent.self
        )
    }

    /// Set the content for a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.upsertContent(
    ///         campaignId: "campaign_id",
    ///         request: CampaignContent(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertContent(campaignId: String, request: CampaignContent, requestOptions: RequestOptions? = nil) async throws -> CampaignContent {
        return try await httpClient.performRequest(
            method: .put,
            path: "/3.0/campaigns/\(campaignId)/content",
            body: request,
            requestOptions: requestOptions,
            responseType: CampaignContent.self
        )
    }

    /// Get team feedback while you're working together on a Mailchimp campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.listFeedback(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listFeedback(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListFeedbackCampaignsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/campaigns/\(campaignId)/feedback",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListFeedbackCampaignsResponse.self
        )
    }

    /// Add feedback on a specific campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.createFeedback(
    ///         campaignId: "campaign_id",
    ///         request: .init(message: "message")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFeedback(campaignId: String, request: Requests.CreateFeedbackCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> CreateFeedbackCampaignsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/campaigns/\(campaignId)/feedback",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateFeedbackCampaignsResponse.self
        )
    }

    /// Get a specific feedback message from a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.getFeedback(
    ///         campaignId: "campaign_id",
    ///         feedbackId: "feedback_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter feedbackId: The unique id for the feedback message.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFeedback(campaignId: String, feedbackId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> CampaignFeedback {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/campaigns/\(campaignId)/feedback/\(feedbackId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: CampaignFeedback.self
        )
    }

    /// Remove a specific feedback message for a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.deleteFeedback(
    ///         campaignId: "campaign_id",
    ///         feedbackId: "feedback_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter feedbackId: The unique id for the feedback message.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteFeedback(campaignId: String, feedbackId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/campaigns/\(campaignId)/feedback/\(feedbackId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific feedback message for a campaign.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.updateFeedback(
    ///         campaignId: "campaign_id",
    ///         feedbackId: "feedback_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter feedbackId: The unique id for the feedback message.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateFeedback(campaignId: String, feedbackId: String, request: Requests.UpdateFeedbackCampaignsRequest, requestOptions: RequestOptions? = nil) async throws -> CampaignFeedback {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/campaigns/\(campaignId)/feedback/\(feedbackId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CampaignFeedback.self
        )
    }

    /// Review the send checklist for a campaign, and resolve any issues before sending.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.campaigns.listSendChecklist(campaignId: "campaign_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter campaignId: The unique id for the campaign.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSendChecklist(campaignId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSendChecklistCampaignsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/campaigns/\(campaignId)/send-checklist",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListSendChecklistCampaignsResponse.self
        )
    }
}