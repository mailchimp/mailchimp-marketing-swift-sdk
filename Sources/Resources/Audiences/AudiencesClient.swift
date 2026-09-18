import Foundation

public final class AudiencesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get a list of omni-channel contacts for a given audience.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.audiences.getAudienceContactList(audienceId: "audience_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter audienceId: The unique ID for the audience.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter cursor: Paginate through a collection of records by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request. Default value fetches the first "page" of results.
    /// - Parameter createdBefore: Restricts the response to contacts created at or before the specified time (inclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    /// - Parameter createdSince: Restricts the response to contacts created after the specified time (exclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    /// - Parameter updatedBefore: Restricts the response to contacts updated at or before the specified time (inclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    /// - Parameter updatedSince: Restricts the response to contacts updated after the specified time (exclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    /// - Parameter sortField: Specifies the field to sort the returned contacts by.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAudienceContactList(audienceId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, cursor: String? = nil, createdBefore: Date? = nil, createdSince: Date? = nil, updatedBefore: Date? = nil, updatedSince: Date? = nil, sortField: GetAudienceContactListRequestSortField? = nil, sortDir: GetAudienceContactListRequestSortDir? = nil, requestOptions: RequestOptions? = nil) async throws -> GetAudienceContactListResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/audiences/\(audienceId)/contacts",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "cursor": cursor.map { .string($0) }, 
                "created_before": createdBefore.map { .date($0) }, 
                "created_since": createdSince.map { .date($0) }, 
                "updated_before": updatedBefore.map { .date($0) }, 
                "updated_since": updatedSince.map { .date($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: GetAudienceContactListResponse.self
        )
    }

    /// Create a new omni-channel contact for an audience.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.audiences.createAudienceContact(
    ///         audienceId: "audience_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter audienceId: The unique ID for the audience.
    /// - Parameter mergeFieldValidationMode: Defines how merge field validation is handled. When set to `ignore_required_checks`, the API does not raise an error if required merge fields are missing from the request. When set to `strict`, the API enforces validation and returns an error if any required merge field is not provided. If this setting is omitted, `strict` is applied by default.
    /// - Parameter dataMode: Indicates the data processing mode. In `historical` mode, contact data changes do not trigger automations or webhooks. In `live mode`, such changes do trigger them.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createAudienceContact(audienceId: String, mergeFieldValidationMode: CreateAudienceContactRequestMergeFieldValidationMode? = nil, dataMode: CreateAudienceContactRequestDataMode? = nil, request: Requests.CreateAudienceContactRequest, requestOptions: RequestOptions? = nil) async throws -> AudiencesContact {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/audiences/\(audienceId)/contacts",
            queryParams: [
                "merge_field_validation_mode": mergeFieldValidationMode.map { .string($0.rawValue) }, 
                "data_mode": dataMode.map { .string($0.rawValue) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: AudiencesContact.self
        )
    }

    /// Retrieve a specific omni-channel contact in an audience.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.audiences.getAudienceContact(
    ///         audienceId: "audience_id",
    ///         contactId: "contact_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter audienceId: The unique ID for the audience.
    /// - Parameter contactId: A unique identifier for the contact, which can be a Mailchimp contact ID or a channel hash. A channel hash must follow the format email:[md5_hash] (where the hash is the MD5 of the lowercased email address) or sms:[sha256_hash] (where the hash is the SHA256 of the E.164-formatted phone number).
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAudienceContact(audienceId: String, contactId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> AudiencesContact {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/audiences/\(audienceId)/contacts/\(contactId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: AudiencesContact.self
        )
    }

    /// Update an existing omni-channel contact.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.audiences.patchAudienceContact(
    ///         audienceId: "audience_id",
    ///         contactId: "contact_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter audienceId: The unique ID for the audience.
    /// - Parameter contactId: The unique id for the contact.
    /// - Parameter mergeFieldValidationMode: Defines how merge field validation is handled. When set to `ignore_required_checks`, the API does not raise an error if required merge fields are missing from the request. When set to `strict`, the API enforces validation and returns an error if any required merge field is not provided. If this setting is omitted, `strict` is applied by default.
    /// - Parameter dataMode: Indicates the data processing mode. In `historical` mode, contact data changes do not trigger automations or webhooks. In `live mode`, such changes do trigger them.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func patchAudienceContact(audienceId: String, contactId: String, mergeFieldValidationMode: PatchAudienceContactRequestMergeFieldValidationMode? = nil, dataMode: PatchAudienceContactRequestDataMode? = nil, request: Requests.PatchAudienceContactRequest, requestOptions: RequestOptions? = nil) async throws -> AudiencesContact {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/audiences/\(audienceId)/contacts/\(contactId)",
            queryParams: [
                "merge_field_validation_mode": mergeFieldValidationMode.map { .string($0.rawValue) }, 
                "data_mode": dataMode.map { .string($0.rawValue) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: AudiencesContact.self
        )
    }

    /// Archives a Contact.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.audiences.postAudiencesContactsActionsArchive(
    ///         audienceId: "audience_id",
    ///         contactId: "contact_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter audienceId: The unique ID for the audience.
    /// - Parameter contactId: The unique id for the contact.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postAudiencesContactsActionsArchive(audienceId: String, contactId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/audiences/\(audienceId)/contacts/\(contactId)/actions/archive",
            requestOptions: requestOptions
        )
    }

    /// Forgets a Contact.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.audiences.postAudiencesContactsActionsForget(
    ///         audienceId: "audience_id",
    ///         contactId: "contact_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter audienceId: The unique ID for the audience.
    /// - Parameter contactId: The unique id for the contact.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postAudiencesContactsActionsForget(audienceId: String, contactId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/audiences/\(audienceId)/contacts/\(contactId)/actions/forget",
            requestOptions: requestOptions
        )
    }
}