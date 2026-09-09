import Foundation

public final class AutomationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get a summary of an account's classic automations.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter beforeCreateTime: Restrict the response to automations created before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceCreateTime: Restrict the response to automations created after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter beforeStartTime: Restrict the response to automations started before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceStartTime: Restrict the response to automations started after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter status: Restrict the results to automations with the specified status.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, beforeCreateTime: Date? = nil, sinceCreateTime: Date? = nil, beforeStartTime: Date? = nil, sinceStartTime: Date? = nil, status: ListAutomationsRequestStatus? = nil, requestOptions: RequestOptions? = nil) async throws -> ListAutomationsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/automations",
            queryParams: [
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "before_create_time": beforeCreateTime.map { .date($0) }, 
                "since_create_time": sinceCreateTime.map { .date($0) }, 
                "before_start_time": beforeStartTime.map { .date($0) }, 
                "since_start_time": sinceStartTime.map { .date($0) }, 
                "status": status.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListAutomationsResponse.self
        )
    }

    /// Create a new classic automation in your Mailchimp account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.create(request: .init(
    ///         recipients: CreateAutomationsRequestRecipients(
    ///
    ///         ),
    ///         triggerSettings: CreateAutomationsRequestTriggerSettings(
    ///             workflowType: .abandonedBrowse
    ///         )
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateAutomationsRequest, requestOptions: RequestOptions? = nil) async throws -> AutomationWorkflow {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/automations",
            body: request,
            requestOptions: requestOptions,
            responseType: AutomationWorkflow.self
        )
    }

    /// Get a summary of an individual classic automation workflow's settings and content. The `trigger_settings` object returns information for the first email in the workflow.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.get(workflowId: "workflow_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(workflowId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> AutomationWorkflow {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/automations/\(workflowId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: AutomationWorkflow.self
        )
    }

    /// Archiving will permanently end your automation and keep the report data. You’ll be able to replicate your archived automation, but you can’t restart it.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.createActionArchive(workflowId: "workflow_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionArchive(workflowId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/automations/\(workflowId)/actions/archive",
            requestOptions: requestOptions
        )
    }

    /// Pause all emails in a specific classic automation workflow.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.createActionPauseAllEmail(workflowId: "workflow_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionPauseAllEmail(workflowId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/automations/\(workflowId)/actions/pause-all-emails",
            requestOptions: requestOptions
        )
    }

    /// Start all emails in a classic automation workflow.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.createActionStartAllEmail(workflowId: "workflow_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionStartAllEmail(workflowId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/automations/\(workflowId)/actions/start-all-emails",
            requestOptions: requestOptions
        )
    }

    /// Get a summary of the emails in a classic automation workflow.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.listEmails(workflowId: "workflow_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listEmails(workflowId: String, requestOptions: RequestOptions? = nil) async throws -> ListEmailsAutomationsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/automations/\(workflowId)/emails",
            requestOptions: requestOptions,
            responseType: ListEmailsAutomationsResponse.self
        )
    }

    /// Get information about an individual classic automation workflow email.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.getEmail(
    ///         workflowId: "workflow_id",
    ///         workflowEmailId: "workflow_email_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter workflowEmailId: The unique id for the Automation workflow email.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getEmail(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions? = nil) async throws -> AutomationWorkflowEmail {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/automations/\(workflowId)/emails/\(workflowEmailId)",
            requestOptions: requestOptions,
            responseType: AutomationWorkflowEmail.self
        )
    }

    /// Removes an individual classic automation workflow email. Emails from certain workflow types, including the Abandoned Cart Email (abandonedCart) and Product Retargeting Email (abandonedBrowse) Workflows, cannot be deleted.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.deleteEmail(
    ///         workflowId: "workflow_id",
    ///         workflowEmailId: "workflow_email_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter workflowEmailId: The unique id for the Automation workflow email.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteEmail(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/automations/\(workflowId)/emails/\(workflowEmailId)",
            requestOptions: requestOptions
        )
    }

    /// Update settings for a classic automation workflow email.  Only works with workflows of type: abandonedBrowse, abandonedCart, emailFollowup, or singleWelcome.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.updateEmail(
    ///         workflowId: "workflow_id",
    ///         workflowEmailId: "workflow_email_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter workflowEmailId: The unique id for the Automation workflow email.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateEmail(workflowId: String, workflowEmailId: String, request: Requests.UpdateEmailAutomationsRequest, requestOptions: RequestOptions? = nil) async throws -> AutomationWorkflowEmail {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/automations/\(workflowId)/emails/\(workflowEmailId)",
            body: request,
            requestOptions: requestOptions,
            responseType: AutomationWorkflowEmail.self
        )
    }

    /// Pause an automated email.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.createEmailActionPause(
    ///         workflowId: "workflow_id",
    ///         workflowEmailId: "workflow_email_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter workflowEmailId: The unique id for the Automation workflow email.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createEmailActionPause(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/automations/\(workflowId)/emails/\(workflowEmailId)/actions/pause",
            requestOptions: requestOptions
        )
    }

    /// Start an automated email.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.createEmailActionStart(
    ///         workflowId: "workflow_id",
    ///         workflowEmailId: "workflow_email_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter workflowEmailId: The unique id for the Automation workflow email.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createEmailActionStart(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/automations/\(workflowId)/emails/\(workflowEmailId)/actions/start",
            requestOptions: requestOptions
        )
    }

    /// Get information about a classic automation email queue.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.listEmailQueue(
    ///         workflowId: "workflow_id",
    ///         workflowEmailId: "workflow_email_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter workflowEmailId: The unique id for the Automation workflow email.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listEmailQueue(workflowId: String, workflowEmailId: String, requestOptions: RequestOptions? = nil) async throws -> ListEmailQueueAutomationsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/automations/\(workflowId)/emails/\(workflowEmailId)/queue",
            requestOptions: requestOptions,
            responseType: ListEmailQueueAutomationsResponse.self
        )
    }

    /// Manually add a subscriber to a workflow, bypassing the default trigger settings. You can also use this endpoint to trigger a series of automated emails in an API 3.0 workflow type.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.createEmailQueue(
    ///         workflowId: "workflow_id",
    ///         workflowEmailId: "workflow_email_id",
    ///         request: .init(emailAddress: "email_address")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter workflowEmailId: The unique id for the Automation workflow email.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createEmailQueue(workflowId: String, workflowEmailId: String, request: Requests.CreateEmailQueueAutomationsRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriberInAutomationQueue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/automations/\(workflowId)/emails/\(workflowEmailId)/queue",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriberInAutomationQueue.self
        )
    }

    /// Get information about a specific subscriber in a classic automation email queue.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.getEmailQueue(
    ///         workflowId: "workflow_id",
    ///         workflowEmailId: "workflow_email_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter workflowEmailId: The unique id for the Automation workflow email.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getEmailQueue(workflowId: String, workflowEmailId: String, subscriberHash: String, requestOptions: RequestOptions? = nil) async throws -> SubscriberInAutomationQueue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/automations/\(workflowId)/emails/\(workflowEmailId)/queue/\(subscriberHash)",
            requestOptions: requestOptions,
            responseType: SubscriberInAutomationQueue.self
        )
    }

    /// Get information about subscribers who were removed from a classic automation workflow.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.listRemovedSubscribers(workflowId: "workflow_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listRemovedSubscribers(workflowId: String, requestOptions: RequestOptions? = nil) async throws -> ListRemovedSubscribersAutomationsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/automations/\(workflowId)/removed-subscribers",
            requestOptions: requestOptions,
            responseType: ListRemovedSubscribersAutomationsResponse.self
        )
    }

    /// Remove a subscriber from a specific classic automation workflow. You can remove a subscriber at any point in an automation workflow, regardless of how many emails they've been sent from that workflow. Once they're removed, they can never be added back to the same workflow.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.createRemovedSubscriber(
    ///         workflowId: "workflow_id",
    ///         request: .init(emailAddress: "email_address")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createRemovedSubscriber(workflowId: String, request: Requests.CreateRemovedSubscriberAutomationsRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriberRemovedFromAutomationWorkflow {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/automations/\(workflowId)/removed-subscribers",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriberRemovedFromAutomationWorkflow.self
        )
    }

    /// Get information about a specific subscriber who was removed from a classic automation workflow.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.automations.getRemovedSubscriber(
    ///         workflowId: "workflow_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter workflowId: The unique id for the Automation workflow.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getRemovedSubscriber(workflowId: String, subscriberHash: String, requestOptions: RequestOptions? = nil) async throws -> SubscriberRemovedFromAutomationWorkflow {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/automations/\(workflowId)/removed-subscribers/\(subscriberHash)",
            requestOptions: requestOptions,
            responseType: SubscriberRemovedFromAutomationWorkflow.self
        )
    }
}