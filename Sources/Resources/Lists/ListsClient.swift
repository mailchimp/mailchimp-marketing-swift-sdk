import Foundation

public final class ListsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get information about all lists in the account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter beforeDateCreated: Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceDateCreated: Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter beforeCampaignLastSent: Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceCampaignLastSent: Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter email: Restrict results to lists that include a specific subscriber's email address.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter hasEcommerceStore: Restrict results to lists that contain an active, connected, undeleted ecommerce store.
    /// - Parameter includeTotalContacts: Deprecated. Return the total_contacts field in the stats response, which contains an approximate count of subscribed, unsubscribed, and transactional contacts. For a complete audience contact count, use the /audiences endpoint instead.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, beforeDateCreated: String? = nil, sinceDateCreated: String? = nil, beforeCampaignLastSent: String? = nil, sinceCampaignLastSent: String? = nil, email: String? = nil, sortField: ListListsRequestSortField? = nil, sortDir: ListListsRequestSortDir? = nil, hasEcommerceStore: Bool? = nil, includeTotalContacts: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ListListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "before_date_created": beforeDateCreated.map { .string($0) }, 
                "since_date_created": sinceDateCreated.map { .string($0) }, 
                "before_campaign_last_sent": beforeCampaignLastSent.map { .string($0) }, 
                "since_campaign_last_sent": sinceCampaignLastSent.map { .string($0) }, 
                "email": email.map { .string($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }, 
                "has_ecommerce_store": hasEcommerceStore.map { .bool($0) }, 
                "include_total_contacts": includeTotalContacts.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListListsResponse.self
        )
    }

    /// Create a new list in your Mailchimp account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.create(request: .init(
    ///         campaignDefaults: CreateListsRequestCampaignDefaults(
    ///             fromEmail: "from_email",
    ///             fromName: "from_name",
    ///             language: "language",
    ///             subject: "subject"
    ///         ),
    ///         contact: CreateListsRequestContact(
    ///             address1: "address1",
    ///             city: "city",
    ///             company: "company",
    ///             country: "country"
    ///         ),
    ///         emailTypeOption: true,
    ///         name: "name",
    ///         permissionReminder: "permission_reminder"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateListsRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriberList {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriberList.self
        )
    }

    /// Get information about a specific list in your Mailchimp account. Results include list members who have signed up but haven't confirmed their subscription yet and unsubscribed or cleaned.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.get(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter includeTotalContacts: Deprecated. Return the total_contacts field in the stats response, which contains an approximate count of subscribed, unsubscribed, and transactional contacts. For a complete audience contact count, use the /audiences endpoint instead.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeTotalContacts: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> SubscriberList {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "include_total_contacts": includeTotalContacts.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: SubscriberList.self
        )
    }

    /// Batch subscribe or unsubscribe list members.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.batchSubscribeOrUnsubscribe(
    ///         listId: "list_id",
    ///         request: .init(members: [])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter skipMergeValidation: If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    /// - Parameter skipDuplicateCheck: If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func batchSubscribeOrUnsubscribe(listId: String, skipMergeValidation: Bool? = nil, skipDuplicateCheck: Bool? = nil, request: Requests.BatchSubscribeOrUnsubscribeListsRequest, requestOptions: RequestOptions? = nil) async throws -> BatchSubscribeOrUnsubscribeListsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)",
            queryParams: [
                "skip_merge_validation": skipMergeValidation.map { .bool($0) }, 
                "skip_duplicate_check": skipDuplicateCheck.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: BatchSubscribeOrUnsubscribeListsResponse.self
        )
    }

    /// Delete a list from your Mailchimp account. If you delete a list, you'll lose the list history—including subscriber activity, unsubscribes, complaints, and bounces. You’ll also lose subscribers’ email addresses, unless you exported and backed up your list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.delete(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(listId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)",
            requestOptions: requestOptions
        )
    }

    /// Update the settings for a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.update(
    ///         listId: "list_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(listId: String, request: Requests.UpdateListsRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriberList {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriberList.self
        )
    }

    /// Get all abuse reports for a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listAbuseReports(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listAbuseReports(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListAbuseReportsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/abuse-reports",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListAbuseReportsListsResponse.self
        )
    }

    /// Get details about a specific abuse report.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getAbuseReport(
    ///         listId: "list_id",
    ///         reportId: "report_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter reportId: The id for the abuse report.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAbuseReport(listId: String, reportId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListsAbuseReports {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/abuse-reports/\(reportId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListsAbuseReports.self
        )
    }

    /// Get up to the previous 180 days of daily detailed aggregated activity stats for a list, not including Automation activity.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listActivity(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listActivity(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListActivityListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/activity",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListActivityListsResponse.self
        )
    }

    /// Get a list of the top email clients based on user-agent strings.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listClients(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listClients(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListClientsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/clients",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListClientsListsResponse.self
        )
    }

    /// Get a month-by-month summary of a specific list's growth activity.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listGrowthHistory(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listGrowthHistory(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: ListGrowthHistoryListsRequestSortField? = nil, sortDir: ListGrowthHistoryListsRequestSortDir? = nil, requestOptions: RequestOptions? = nil) async throws -> ListGrowthHistoryListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/growth-history",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListGrowthHistoryListsResponse.self
        )
    }

    /// Get a summary of a specific list's growth activity for a specific month and year.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getGrowthHistory(
    ///         listId: "list_id",
    ///         month: "month"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter month: A specific month of list growth history.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getGrowthHistory(listId: String, month: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> GrowthHistory {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/growth-history/\(month)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: GrowthHistory.self
        )
    }

    /// Get information about a list's interest categories.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listInterestCategories(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter type: Restrict results a type of interest group
    /// - Parameter sortField: Returns interest categories sorted by the specified field. Defaults to display_order.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listInterestCategories(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, sortField: ListInterestCategoriesListsRequestSortField? = nil, sortDir: ListInterestCategoriesListsRequestSortDir? = nil, requestOptions: RequestOptions? = nil) async throws -> ListInterestCategoriesListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/interest-categories",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "type": type.map { .string($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListInterestCategoriesListsResponse.self
        )
    }

    /// Create a new interest category.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createInterestCategory(
    ///         listId: "list_id",
    ///         request: .init(
    ///             title: "title",
    ///             type: .checkboxes
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createInterestCategory(listId: String, request: Requests.CreateInterestCategoryListsRequest, requestOptions: RequestOptions? = nil) async throws -> InterestCategory {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/interest-categories",
            body: request,
            requestOptions: requestOptions,
            responseType: InterestCategory.self
        )
    }

    /// Get information about a specific interest category.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getInterestCategory(
    ///         listId: "list_id",
    ///         interestCategoryId: "interest_category_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter interestCategoryId: The unique ID for the interest category.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getInterestCategory(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> InterestCategory {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/interest-categories/\(interestCategoryId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: InterestCategory.self
        )
    }

    /// Delete a specific interest category.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteInterestCategory(
    ///         listId: "list_id",
    ///         interestCategoryId: "interest_category_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter interestCategoryId: The unique ID for the interest category.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteInterestCategory(listId: String, interestCategoryId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/interest-categories/\(interestCategoryId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific interest category.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.updateInterestCategory(
    ///         listId: "list_id",
    ///         interestCategoryId: "interest_category_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter interestCategoryId: The unique ID for the interest category.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateInterestCategory(listId: String, interestCategoryId: String, request: Requests.UpdateInterestCategoryListsRequest, requestOptions: RequestOptions? = nil) async throws -> InterestCategory {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)/interest-categories/\(interestCategoryId)",
            body: request,
            requestOptions: requestOptions,
            responseType: InterestCategory.self
        )
    }

    /// Get a list of this category's interests.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listInterestCategoryInterests(
    ///         listId: "list_id",
    ///         interestCategoryId: "interest_category_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter interestCategoryId: The unique ID for the interest category.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listInterestCategoryInterests(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListInterestCategoryInterestsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/interest-categories/\(interestCategoryId)/interests",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListInterestCategoryInterestsListsResponse.self
        )
    }

    /// Create a new interest or 'group name' for a specific category.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createInterestCategoryInterest(
    ///         listId: "list_id",
    ///         interestCategoryId: "interest_category_id",
    ///         request: .init(name: "name")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter interestCategoryId: The unique ID for the interest category.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createInterestCategoryInterest(listId: String, interestCategoryId: String, request: Requests.CreateInterestCategoryInterestListsRequest, requestOptions: RequestOptions? = nil) async throws -> Interest {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/interest-categories/\(interestCategoryId)/interests",
            body: request,
            requestOptions: requestOptions,
            responseType: Interest.self
        )
    }

    /// Get interests or 'group names' for a specific category.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getInterestCategoryInterest(
    ///         listId: "list_id",
    ///         interestCategoryId: "interest_category_id",
    ///         interestId: "interest_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter interestCategoryId: The unique ID for the interest category.
    /// - Parameter interestId: The specific interest or 'group name'.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getInterestCategoryInterest(listId: String, interestCategoryId: String, interestId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> Interest {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/interest-categories/\(interestCategoryId)/interests/\(interestId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: Interest.self
        )
    }

    /// Delete interests or group names in a specific category.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteInterestCategoryInterest(
    ///         listId: "list_id",
    ///         interestCategoryId: "interest_category_id",
    ///         interestId: "interest_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter interestCategoryId: The unique ID for the interest category.
    /// - Parameter interestId: The specific interest or 'group name'.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteInterestCategoryInterest(listId: String, interestCategoryId: String, interestId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/interest-categories/\(interestCategoryId)/interests/\(interestId)",
            requestOptions: requestOptions
        )
    }

    /// Update interests or 'group names' for a specific category.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.updateInterestCategoryInterest(
    ///         listId: "list_id",
    ///         interestCategoryId: "interest_category_id",
    ///         interestId: "interest_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter interestCategoryId: The unique ID for the interest category.
    /// - Parameter interestId: The specific interest or 'group name'.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateInterestCategoryInterest(listId: String, interestCategoryId: String, interestId: String, request: Requests.UpdateInterestCategoryInterestListsRequest, requestOptions: RequestOptions? = nil) async throws -> Interest {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)/interest-categories/\(interestCategoryId)/interests/\(interestId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Interest.self
        )
    }

    /// Get the locations (countries) that the list's subscribers have been tagged to based on geocoding their IP address.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listLocations(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listLocations(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListLocationsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/locations",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListLocationsListsResponse.self
        )
    }

    /// Get information about members in a specific Mailchimp list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listMembers(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter emailType: The email type.
    /// - Parameter status: The subscriber's status.
    /// - Parameter sinceTimestampOpt: Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter beforeTimestampOpt: Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceLastChanged: Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter beforeLastChanged: Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter uniqueEmailId: A unique identifier for the email address across all Mailchimp lists.
    /// - Parameter vipOnly: A filter to return only the list's VIP members. Passing `true` will restrict results to VIP list members, passing `false` will return all list members.
    /// - Parameter interestCategoryId: The unique id for the interest category.
    /// - Parameter interestIds: Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories.
    /// - Parameter interestMatch: Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. "any" will match a member with any of the interest supplied, "all" will only match members with every interest supplied, and "none" will match members without any of the interest supplied.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter sinceLastCampaign: Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter.
    /// - Parameter unsubscribedSince: Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMembers(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailType: String? = nil, status: ListMembersListsRequestStatus? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: ListMembersListsRequestInterestMatch? = nil, sortField: ListMembersListsRequestSortField? = nil, sortDir: ListMembersListsRequestSortDir? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMembersListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "email_type": emailType.map { .string($0) }, 
                "status": status.map { .string($0.rawValue) }, 
                "since_timestamp_opt": sinceTimestampOpt.map { .string($0) }, 
                "before_timestamp_opt": beforeTimestampOpt.map { .string($0) }, 
                "since_last_changed": sinceLastChanged.map { .string($0) }, 
                "before_last_changed": beforeLastChanged.map { .string($0) }, 
                "unique_email_id": uniqueEmailId.map { .string($0) }, 
                "vip_only": vipOnly.map { .bool($0) }, 
                "interest_category_id": interestCategoryId.map { .string($0) }, 
                "interest_ids": interestIds.map { .string($0) }, 
                "interest_match": interestMatch.map { .string($0.rawValue) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }, 
                "since_last_campaign": sinceLastCampaign.map { .bool($0) }, 
                "unsubscribed_since": unsubscribedSince.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMembersListsResponse.self
        )
    }

    /// Add a new member to the list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createMember(
    ///         listId: "list_id",
    ///         request: .init(
    ///             emailAddress: "email_address",
    ///             status: .subscribed
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter skipMergeValidation: If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createMember(listId: String, skipMergeValidation: Bool? = nil, request: Requests.CreateMemberListsRequest, requestOptions: RequestOptions? = nil) async throws -> ListMembers {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/members",
            queryParams: [
                "skip_merge_validation": skipMergeValidation.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: ListMembers.self
        )
    }

    /// Get information about a specific list member, including a currently subscribed, unsubscribed, or bounced member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getMember(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getMember(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMembers {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMembers.self
        )
    }

    /// Add or update a list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.upsertMember(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash",
    ///         request: .init(emailAddress: "email_address")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter skipMergeValidation: If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertMember(listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil, request: Requests.UpsertMemberListsRequest, requestOptions: RequestOptions? = nil) async throws -> ListMembers {
        return try await httpClient.performRequest(
            method: .put,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)",
            queryParams: [
                "skip_merge_validation": skipMergeValidation.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: ListMembers.self
        )
    }

    /// Archive a list member. To permanently delete, use the delete-permanent action.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteMember(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteMember(listId: String, subscriberHash: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)",
            requestOptions: requestOptions
        )
    }

    /// Update information for a specific list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.updateMember(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter skipMergeValidation: If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateMember(listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil, request: Requests.UpdateMemberListsRequest, requestOptions: RequestOptions? = nil) async throws -> ListMembers {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)",
            queryParams: [
                "skip_merge_validation": skipMergeValidation.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: ListMembers.self
        )
    }

    /// Delete all personally identifiable information related to a list member, and remove them from a list. This will make it impossible to re-import the list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createMemberActionDeletePermanent(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createMemberActionDeletePermanent(listId: String, subscriberHash: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/actions/delete-permanent",
            requestOptions: requestOptions
        )
    }

    /// Get the last 50 events of a member's activity on a specific list, including opens, clicks, and unsubscribes.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listMemberActivity(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter action: A comma seperated list of actions to return.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMemberActivity(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, action: [ListMemberActivityListsRequestActionItem]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMemberActivityListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/activity",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "action": action.map { .unknown($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMemberActivityListsResponse.self
        )
    }

    /// Get a member's activity on a specific list, including opens, clicks, and unsubscribes.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listMemberActivityFeed(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter activityFilters: A comma-separated list of activity filters that correspond to a set of activity types, e.g "?activity_filters=open,bounce,click".
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMemberActivityFeed(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, activityFilters: [ListMemberActivityFeedListsRequestActivityFiltersItem]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMemberActivityFeedListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/activity-feed",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "activity_filters": activityFilters.map { .unknown($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMemberActivityFeedListsResponse.self
        )
    }

    /// Get events for a contact.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listMemberEvents(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMemberEvents(listId: String, subscriberHash: String, count: Int? = nil, offset: Int? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMemberEventsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/events",
            queryParams: [
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMemberEventsListsResponse.self
        )
    }

    /// Add an event for a list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createMemberEvent(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash",
    ///         request: .init(name: "name")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createMemberEvent(listId: String, subscriberHash: String, request: Requests.CreateMemberEventListsRequest, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/events",
            body: request,
            requestOptions: requestOptions
        )
    }

    /// Get the last 50 Goal events for a member on a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listMemberGoals(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMemberGoals(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMemberGoalsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/goals",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMemberGoalsListsResponse.self
        )
    }

    /// Get recent notes for a specific list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listMemberNotes(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter sortField: Returns notes sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMemberNotes(listId: String, subscriberHash: String, sortField: ListMemberNotesListsRequestSortField? = nil, sortDir: ListMemberNotesListsRequestSortDir? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMemberNotesListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/notes",
            queryParams: [
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }, 
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMemberNotesListsResponse.self
        )
    }

    /// Add a new note for a specific subscriber.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createMemberNote(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createMemberNote(listId: String, subscriberHash: String, request: Requests.CreateMemberNoteListsRequest, requestOptions: RequestOptions? = nil) async throws -> MemberNotes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/notes",
            body: request,
            requestOptions: requestOptions,
            responseType: MemberNotes.self
        )
    }

    /// Get a specific note for a specific list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getMemberNote(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash",
    ///         noteId: "note_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter noteId: The id for the note.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getMemberNote(listId: String, subscriberHash: String, noteId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> MemberNotes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/notes/\(noteId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: MemberNotes.self
        )
    }

    /// Delete a specific note for a specific list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteMemberNote(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash",
    ///         noteId: "note_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter noteId: The id for the note.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteMemberNote(listId: String, subscriberHash: String, noteId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/notes/\(noteId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific note for a specific list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.updateMemberNote(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash",
    ///         noteId: "note_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter noteId: The id for the note.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateMemberNote(listId: String, subscriberHash: String, noteId: String, request: Requests.UpdateMemberNoteListsRequest, requestOptions: RequestOptions? = nil) async throws -> MemberNotes {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/notes/\(noteId)",
            body: request,
            requestOptions: requestOptions,
            responseType: MemberNotes.self
        )
    }

    /// Get the tags on a list member.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listMemberTags(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMemberTags(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMemberTagsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/tags",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMemberTagsListsResponse.self
        )
    }

    /// Add or remove tags from a list member. If a tag that does not exist is passed in and set as 'active', a new tag will be created.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createMemberTag(
    ///         listId: "list_id",
    ///         subscriberHash: "subscriber_hash",
    ///         request: .init(tags: [
    ///             CreateMemberTagListsRequestTagsItem(
    ///                 name: "name",
    ///                 status: .inactive
    ///             )
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createMemberTag(listId: String, subscriberHash: String, request: Requests.CreateMemberTagListsRequest, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/members/\(subscriberHash)/tags",
            body: request,
            requestOptions: requestOptions
        )
    }

    /// Get a list of all merge fields for an audience.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listMergeFields(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter type: The merge field type.
    /// - Parameter required: Whether it's a required merge field.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMergeFields(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, required: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ListMergeFieldsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/merge-fields",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "type": type.map { .string($0) }, 
                "required": required.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListMergeFieldsListsResponse.self
        )
    }

    /// Add a new merge field for a specific audience.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createMergeField(
    ///         listId: "list_id",
    ///         request: .init(
    ///             name: "name",
    ///             type: .text
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createMergeField(listId: String, request: Requests.CreateMergeFieldListsRequest, requestOptions: RequestOptions? = nil) async throws -> MergeField {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/merge-fields",
            body: request,
            requestOptions: requestOptions,
            responseType: MergeField.self
        )
    }

    /// Get information about a specific merge field.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getMergeField(
    ///         listId: "list_id",
    ///         mergeId: "merge_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter mergeId: The id for the merge field.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getMergeField(listId: String, mergeId: String, excludeFields: [String]? = nil, fields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> MergeField {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/merge-fields/\(mergeId)",
            queryParams: [
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "fields": fields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: MergeField.self
        )
    }

    /// Delete a specific merge field.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteMergeField(
    ///         listId: "list_id",
    ///         mergeId: "merge_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter mergeId: The id for the merge field.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteMergeField(listId: String, mergeId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/merge-fields/\(mergeId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific merge field.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.updateMergeField(
    ///         listId: "list_id",
    ///         mergeId: "merge_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter mergeId: The id for the merge field.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateMergeField(listId: String, mergeId: String, request: Requests.UpdateMergeFieldListsRequest, requestOptions: RequestOptions? = nil) async throws -> MergeField {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)/merge-fields/\(mergeId)",
            body: request,
            requestOptions: requestOptions,
            responseType: MergeField.self
        )
    }

    /// Get information about all available segments for a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listSegments(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter type: Limit results based on segment type.
    /// - Parameter sinceCreatedAt: Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter beforeCreatedAt: Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter includeCleaned: Include cleaned members in response
    /// - Parameter includeTransactional: Include transactional members in response
    /// - Parameter includeUnsubscribed: Include unsubscribed members in response
    /// - Parameter sinceUpdatedAt: Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter beforeUpdatedAt: Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter excludeType: Exclude results based on segment type. For example, use `exclude_type=static` to exclude tags from the response.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSegments(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, sinceCreatedAt: String? = nil, beforeCreatedAt: String? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, sinceUpdatedAt: String? = nil, beforeUpdatedAt: String? = nil, excludeType: ListSegmentsListsRequestExcludeType? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSegmentsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/segments",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "type": type.map { .string($0) }, 
                "since_created_at": sinceCreatedAt.map { .string($0) }, 
                "before_created_at": beforeCreatedAt.map { .string($0) }, 
                "include_cleaned": includeCleaned.map { .bool($0) }, 
                "include_transactional": includeTransactional.map { .bool($0) }, 
                "include_unsubscribed": includeUnsubscribed.map { .bool($0) }, 
                "since_updated_at": sinceUpdatedAt.map { .string($0) }, 
                "before_updated_at": beforeUpdatedAt.map { .string($0) }, 
                "exclude_type": excludeType.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListSegmentsListsResponse.self
        )
    }

    /// Create a new segment in a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createSegment(
    ///         listId: "list_id",
    ///         request: .init(name: "name")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSegment(listId: String, request: Requests.CreateSegmentListsRequest, requestOptions: RequestOptions? = nil) async throws -> List {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/segments",
            body: request,
            requestOptions: requestOptions,
            responseType: List.self
        )
    }

    /// Get information about a specific segment.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getSegment(
    ///         listId: "list_id",
    ///         segmentId: "segment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter segmentId: The unique id for the segment.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter includeCleaned: Include cleaned members in response
    /// - Parameter includeTransactional: Include transactional members in response
    /// - Parameter includeUnsubscribed: Include unsubscribed members in response
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSegment(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> List {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/segments/\(segmentId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "include_cleaned": includeCleaned.map { .bool($0) }, 
                "include_transactional": includeTransactional.map { .bool($0) }, 
                "include_unsubscribed": includeUnsubscribed.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: List.self
        )
    }

    /// Batch add/remove list members to static segment
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.batchAddOrRemoveMembers(
    ///         listId: "list_id",
    ///         segmentId: "segment_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter segmentId: The unique id for the segment.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func batchAddOrRemoveMembers(listId: String, segmentId: String, request: Requests.BatchAddOrRemoveMembersListsRequest, requestOptions: RequestOptions? = nil) async throws -> BatchAddOrRemoveMembersListsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/segments/\(segmentId)",
            body: request,
            requestOptions: requestOptions,
            responseType: BatchAddOrRemoveMembersListsResponse.self
        )
    }

    /// Delete a specific segment in a list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteSegment(
    ///         listId: "list_id",
    ///         segmentId: "segment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter segmentId: The unique id for the segment.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteSegment(listId: String, segmentId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/segments/\(segmentId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific segment in a list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.updateSegment(
    ///         listId: "list_id",
    ///         segmentId: "segment_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter segmentId: The unique id for the segment.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateSegment(listId: String, segmentId: String, request: Requests.UpdateSegmentListsRequest, requestOptions: RequestOptions? = nil) async throws -> List {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)/segments/\(segmentId)",
            body: request,
            requestOptions: requestOptions,
            responseType: List.self
        )
    }

    /// Get information about members in a saved segment.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listSegmentMembers(
    ///         listId: "list_id",
    ///         segmentId: "segment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter segmentId: The unique id for the segment.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter includeCleaned: Include cleaned members in response
    /// - Parameter includeTransactional: Include transactional members in response
    /// - Parameter includeUnsubscribed: Include unsubscribed members in response
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSegmentMembers(listId: String, segmentId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSegmentMembersListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/segments/\(segmentId)/members",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "include_cleaned": includeCleaned.map { .bool($0) }, 
                "include_transactional": includeTransactional.map { .bool($0) }, 
                "include_unsubscribed": includeUnsubscribed.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListSegmentMembersListsResponse.self
        )
    }

    /// Add a member to a static segment.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createSegmentMember(
    ///         listId: "list_id",
    ///         segmentId: "segment_id",
    ///         request: .init(emailAddress: "email_address")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter segmentId: The unique id for the segment.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSegmentMember(listId: String, segmentId: String, request: Requests.CreateSegmentMemberListsRequest, requestOptions: RequestOptions? = nil) async throws -> ListsSegmentsMembers {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/segments/\(segmentId)/members",
            body: request,
            requestOptions: requestOptions,
            responseType: ListsSegmentsMembers.self
        )
    }

    /// Remove a member from the specified static segment.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteSegmentMember(
    ///         listId: "list_id",
    ///         segmentId: "segment_id",
    ///         subscriberHash: "subscriber_hash"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter segmentId: The unique id for the segment.
    /// - Parameter subscriberHash: The MD5 hash of the lowercase version of the list member's email address.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteSegmentMember(listId: String, segmentId: String, subscriberHash: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/segments/\(segmentId)/members/\(subscriberHash)",
            requestOptions: requestOptions
        )
    }

    /// Get signup forms for a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listSignupForms(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSignupForms(listId: String, requestOptions: RequestOptions? = nil) async throws -> ListSignupFormsListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/signup-forms",
            requestOptions: requestOptions,
            responseType: ListSignupFormsListsResponse.self
        )
    }

    /// Customize a list's default signup form.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createSignupForm(
    ///         listId: "list_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSignupForm(listId: String, request: Requests.CreateSignupFormListsRequest, requestOptions: RequestOptions? = nil) async throws -> SignupForm {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/signup-forms",
            body: request,
            requestOptions: requestOptions,
            responseType: SignupForm.self
        )
    }

    /// Get information about all available surveys for a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listSurveys(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSurveys(listId: String, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/surveys",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Create a draft survey for an audience.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createSurvey(
    ///         listId: "list_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSurvey(listId: String, request: Requests.CreateSurveyListsRequest, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/surveys",
            body: request,
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Get details about a specific survey.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getSurvey(
    ///         listId: "list_id",
    ///         surveyId: "survey_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSurvey(listId: String, surveyId: String, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/surveys/\(surveyId)",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Delete a survey.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteSurvey(
    ///         listId: "list_id",
    ///         surveyId: "survey_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteSurvey(listId: String, surveyId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/surveys/\(surveyId)",
            requestOptions: requestOptions
        )
    }

    /// Update a survey. When sections is provided, send the complete section list in display order. Any existing section not included is deleted.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.updateSurvey(
    ///         listId: "list_id",
    ///         surveyId: "survey_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateSurvey(listId: String, surveyId: String, request: Requests.UpdateSurveyListsRequest, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)/surveys/\(surveyId)",
            body: request,
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Replicate a survey.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createListSurveyActionReplicate(
    ///         listIdPathParam: "list_id",
    ///         surveyId: "survey_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listIdPathParam: The unique ID for the list.
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createListSurveyActionReplicate(listIdPathParam: String, surveyId: String, request: Requests.CreateListSurveyActionReplicateListsRequest, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listIdPathParam)/surveys/\(surveyId)/actions/replicate",
            body: request,
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Search for tags on a list by name. If no name is provided, will return all tags on the list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listTagSearch(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter name: The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listTagSearch(listId: String, name: String? = nil, requestOptions: RequestOptions? = nil) async throws -> ListTagSearchListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/tag-search",
            queryParams: [
                "name": name.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListTagSearchListsResponse.self
        )
    }

    /// Get information about all webhooks for a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.listWebhooks(listId: "list_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listWebhooks(listId: String, requestOptions: RequestOptions? = nil) async throws -> ListWebhooksListsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/webhooks",
            requestOptions: requestOptions,
            responseType: ListWebhooksListsResponse.self
        )
    }

    /// Create a new webhook for a specific list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.createWebhook(
    ///         listId: "list_id",
    ///         request: AddWebhook(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createWebhook(listId: String, request: AddWebhook, requestOptions: RequestOptions? = nil) async throws -> CreateWebhookListsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/webhooks",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateWebhookListsResponse.self
        )
    }

    /// Get information about a specific webhook.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.getWebhook(
    ///         listId: "list_id",
    ///         webhookId: "webhook_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter webhookId: The webhook's id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getWebhook(listId: String, webhookId: String, requestOptions: RequestOptions? = nil) async throws -> ListWebhooks {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/lists/\(listId)/webhooks/\(webhookId)",
            requestOptions: requestOptions,
            responseType: ListWebhooks.self
        )
    }

    /// Delete a specific webhook in a list.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.deleteWebhook(
    ///         listId: "list_id",
    ///         webhookId: "webhook_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter webhookId: The webhook's id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteWebhook(listId: String, webhookId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/lists/\(listId)/webhooks/\(webhookId)",
            requestOptions: requestOptions
        )
    }

    /// Update the settings for an existing webhook.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.lists.updateWebhook(
    ///         listId: "list_id",
    ///         webhookId: "webhook_id",
    ///         request: AddWebhook(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter webhookId: The webhook's id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateWebhook(listId: String, webhookId: String, request: AddWebhook, requestOptions: RequestOptions? = nil) async throws -> ListWebhooks {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/lists/\(listId)/webhooks/\(webhookId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ListWebhooks.self
        )
    }
}