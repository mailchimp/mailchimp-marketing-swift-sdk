import Foundation

public final class TemplateFoldersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all folders used to organize templates.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templateFolders.list()
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
    public func list(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListTemplateFoldersResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/template-folders",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListTemplateFoldersResponse.self
        )
    }

    /// Create a new template folder.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templateFolders.create(request: .init(name: "name"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateTemplateFoldersRequest, requestOptions: RequestOptions? = nil) async throws -> CreateTemplateFoldersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/template-folders",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateTemplateFoldersResponse.self
        )
    }

    /// Get information about a specific folder used to organize templates.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templateFolders.get(folderId: "folder_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter folderId: The unique id for the template folder.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> GetTemplateFoldersResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/template-folders/\(folderId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: GetTemplateFoldersResponse.self
        )
    }

    /// Delete a specific template folder, and mark all the templates in the folder as 'unfiled'.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templateFolders.delete(folderId: "folder_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter folderId: The unique id for the template folder.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(folderId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/template-folders/\(folderId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific folder used to organize templates.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.templateFolders.update(
    ///         folderId: "folder_id",
    ///         request: .init(name: "name")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter folderId: The unique id for the template folder.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(folderId: String, request: Requests.UpdateTemplateFoldersRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateTemplateFoldersResponse {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/template-folders/\(folderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateTemplateFoldersResponse.self
        )
    }
}