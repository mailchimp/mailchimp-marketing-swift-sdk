import Foundation

public final class TemplatesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get a list of an account's available templates.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templates.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter createdBy: The Mailchimp account user who created the template.
    /// - Parameter sinceDateCreated: Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter beforeDateCreated: Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter type: Limit results based on template type.
    /// - Parameter category: Limit results based on category.
    /// - Parameter folderId: The unique folder id.
    /// - Parameter sortField: Returns user templates sorted by the specified field.
    /// - Parameter contentType: Limit results based on how the template's content is put together. Only templates of type `user` can be filtered by `content_type`. If you want to retrieve saved templates created with the legacy email editor, then filter `content_type` to `template`. If you'd rather pull your saved templates for the new editor, filter to `multichannel`. For code your own templates, filter to `html`.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, sinceDateCreated: String? = nil, beforeDateCreated: String? = nil, type: String? = nil, category: String? = nil, folderId: String? = nil, sortField: ListTemplatesRequestSortField? = nil, contentType: ListTemplatesRequestContentType? = nil, sortDir: ListTemplatesRequestSortDir? = nil, requestOptions: RequestOptions? = nil) async throws -> ListTemplatesResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/templates",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "created_by": createdBy.map { .string($0) }, 
                "since_date_created": sinceDateCreated.map { .string($0) }, 
                "before_date_created": beforeDateCreated.map { .string($0) }, 
                "type": type.map { .string($0) }, 
                "category": category.map { .string($0) }, 
                "folder_id": folderId.map { .string($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "content_type": contentType.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListTemplatesResponse.self
        )
    }

    /// Create a new template for the account. Only Classic templates are supported.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templates.create(request: .init(
    ///         html: "html",
    ///         name: "Freddie's Jokes"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateTemplatesRequest, requestOptions: RequestOptions? = nil) async throws -> TemplateInstance {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/templates",
            body: request,
            requestOptions: requestOptions,
            responseType: TemplateInstance.self
        )
    }

    /// Get information about a specific template.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templates.get(templateId: "template_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter templateId: The unique id for the template.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> TemplateInstance {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/templates/\(templateId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: TemplateInstance.self
        )
    }

    /// Delete a specific template.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templates.delete(templateId: "template_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter templateId: The unique id for the template.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(templateId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/templates/\(templateId)",
            requestOptions: requestOptions
        )
    }

    /// Update the name, HTML, or `folder_id` of an existing template.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templates.update(
    ///         templateId: "template_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter templateId: The unique id for the template.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(templateId: String, request: Requests.UpdateTemplatesRequest, requestOptions: RequestOptions? = nil) async throws -> TemplateInstance {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/templates/\(templateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TemplateInstance.self
        )
    }

    /// Get the sections that you can edit in a template, including each section's default content.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templates.listDefaultContent(templateId: "template_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter templateId: The unique id for the template.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listDefaultContent(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListDefaultContentTemplatesResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/templates/\(templateId)/default-content",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListDefaultContentTemplatesResponse.self
        )
    }
}