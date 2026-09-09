import Foundation

public final class FileManagerClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get information about the file-manager endpoint's resources
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> [ListFileManagerResponseItem] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/file-manager",
            requestOptions: requestOptions,
            responseType: [ListFileManagerResponseItem].self
        )
    }

    /// Get a list of available images and files stored in the File Manager for the account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.listFiles()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter type: The file type for the File Manager file.
    /// - Parameter createdBy: The Mailchimp account user who created the File Manager file.
    /// - Parameter beforeCreatedAt: Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceCreatedAt: Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listFiles(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, sortField: ListFilesFileManagerRequestSortField? = nil, sortDir: ListFilesFileManagerRequestSortDir? = nil, requestOptions: RequestOptions? = nil) async throws -> ListFilesFileManagerResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/file-manager/files",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "type": type.map { .string($0) }, 
                "created_by": createdBy.map { .string($0) }, 
                "before_created_at": beforeCreatedAt.map { .string($0) }, 
                "since_created_at": sinceCreatedAt.map { .string($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListFilesFileManagerResponse.self
        )
    }

    /// Upload a new image or file to the File Manager.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.createFile(request: .init(
    ///         fileData: "file_data",
    ///         name: "name"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFile(request: Requests.CreateFileFileManagerRequest, requestOptions: RequestOptions? = nil) async throws -> GalleryFile {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/file-manager/files",
            body: request,
            requestOptions: requestOptions,
            responseType: GalleryFile.self
        )
    }

    /// Get information about a specific file in the File Manager.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.getFile(fileId: "file_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fileId: The unique id for the File Manager file.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFile(fileId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> GalleryFile {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/file-manager/files/\(fileId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: GalleryFile.self
        )
    }

    /// Remove a specific file from the File Manager.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.deleteFile(fileId: "file_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fileId: The unique id for the File Manager file.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteFile(fileId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/file-manager/files/\(fileId)",
            requestOptions: requestOptions
        )
    }

    /// Update a file in the File Manager.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.updateFile(
    ///         fileId: "file_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fileId: The unique id for the File Manager file.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateFile(fileId: String, request: Requests.UpdateFileFileManagerRequest, requestOptions: RequestOptions? = nil) async throws -> GalleryFile {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/file-manager/files/\(fileId)",
            body: request,
            requestOptions: requestOptions,
            responseType: GalleryFile.self
        )
    }

    /// Get a list of all folders in the File Manager.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.listFolders()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter createdBy: The Mailchimp account user who created the File Manager file.
    /// - Parameter beforeCreatedAt: Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceCreatedAt: Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listFolders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, requestOptions: RequestOptions? = nil) async throws -> ListFoldersFileManagerResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/file-manager/folders",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "created_by": createdBy.map { .string($0) }, 
                "before_created_at": beforeCreatedAt.map { .string($0) }, 
                "since_created_at": sinceCreatedAt.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListFoldersFileManagerResponse.self
        )
    }

    /// Create a new folder in the File Manager.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.createFolder(request: .init(name: "name"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFolder(request: Requests.CreateFolderFileManagerRequest, requestOptions: RequestOptions? = nil) async throws -> CreateFolderFileManagerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/file-manager/folders",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateFolderFileManagerResponse.self
        )
    }

    /// Get information about a specific folder in the File Manager.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.getFolder(folderId: "folder_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter folderId: The unique id for the File Manager folder.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFolder(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> GetFolderFileManagerResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/file-manager/folders/\(folderId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: GetFolderFileManagerResponse.self
        )
    }

    /// Delete a specific folder in the File Manager.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.deleteFolder(folderId: "folder_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter folderId: The unique id for the File Manager folder.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteFolder(folderId: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/file-manager/folders/\(folderId)",
            requestOptions: requestOptions
        )
    }

    /// Update a specific File Manager folder.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.updateFolder(
    ///         folderId: "folder_id",
    ///         request: .init(name: "name")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter folderId: The unique id for the File Manager folder.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateFolder(folderId: String, request: Requests.UpdateFolderFileManagerRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateFolderFileManagerResponse {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/3.0/file-manager/folders/\(folderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateFolderFileManagerResponse.self
        )
    }

    /// Get a list of available images and files stored in this folder.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.fileManager.listFolderFiles(folderId: "folder_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter folderId: The unique id for the File Manager folder.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter type: The file type for the File Manager file.
    /// - Parameter createdBy: The Mailchimp account user who created the File Manager file.
    /// - Parameter beforeCreatedAt: Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sinceCreatedAt: Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listFolderFiles(folderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, sortField: ListFolderFilesFileManagerRequestSortField? = nil, sortDir: ListFolderFilesFileManagerRequestSortDir? = nil, requestOptions: RequestOptions? = nil) async throws -> ListFolderFilesFileManagerResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/file-manager/folders/\(folderId)/files",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "type": type.map { .string($0) }, 
                "created_by": createdBy.map { .string($0) }, 
                "before_created_at": beforeCreatedAt.map { .string($0) }, 
                "since_created_at": sinceCreatedAt.map { .string($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListFolderFilesFileManagerResponse.self
        )
    }
}