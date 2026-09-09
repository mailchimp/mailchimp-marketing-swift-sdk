import Foundation
import Testing
import Mailchimp

@Suite("FileManagerClient Wire Tests") struct FileManagerClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "href": "href",
                    "method": "GET",
                    "rel": "rel",
                    "schema": "schema",
                    "targetSchema": "targetSchema"
                  }
                ]
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            ListFileManagerResponseItem(
                href: Optional("href"),
                method: Optional(ListFileManagerResponseItemMethod.get),
                rel: Optional("rel"),
                schema: Optional("schema"),
                targetSchema: Optional("targetSchema")
            )
        ]
        let response = try await client.fileManager.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listFiles1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "files": [
                    {
                      "_links": [
                        {}
                      ],
                      "created_at": "2024-01-15T09:30:00Z",
                      "created_by": "created_by",
                      "folder_id": 1,
                      "full_size_url": "full_size_url",
                      "height": 1,
                      "id": 1,
                      "name": "name",
                      "size": 1,
                      "thumbnail_url": "thumbnail_url",
                      "type": "image",
                      "width": 1
                    }
                  ],
                  "total_file_size": 1.1,
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListFilesFileManagerResponse(
            links: Optional([
                ListFilesFileManagerResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListFilesFileManagerResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            files: Optional([
                GalleryFile(
                    links: Optional([
                        GalleryFileLinksItem(

                        )
                    ]),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdBy: Optional("created_by"),
                    folderId: Optional(1),
                    fullSizeUrl: Optional("full_size_url"),
                    height: Optional(1),
                    id: Optional(1),
                    name: Optional("name"),
                    size: Optional(1),
                    thumbnailUrl: Optional("thumbnail_url"),
                    type: Optional(GalleryFileType.image),
                    width: Optional(1)
                )
            ]),
            totalFileSize: Optional(1.1),
            totalItems: Optional(1)
        )
        let response = try await client.fileManager.listFiles(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createFile1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "folder_id": 1,
                  "full_size_url": "full_size_url",
                  "height": 1,
                  "id": 1,
                  "name": "name",
                  "size": 1,
                  "thumbnail_url": "thumbnail_url",
                  "type": "image",
                  "width": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GalleryFile(
            links: Optional([
                GalleryFileLinksItem(
                    href: Optional("href"),
                    method: Optional(GalleryFileLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            folderId: Optional(1),
            fullSizeUrl: Optional("full_size_url"),
            height: Optional(1),
            id: Optional(1),
            name: Optional("name"),
            size: Optional(1),
            thumbnailUrl: Optional("thumbnail_url"),
            type: Optional(GalleryFileType.image),
            width: Optional(1)
        )
        let response = try await client.fileManager.createFile(
            request: .init(
                fileData: "file_data",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getFile1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "folder_id": 1,
                  "full_size_url": "full_size_url",
                  "height": 1,
                  "id": 1,
                  "name": "name",
                  "size": 1,
                  "thumbnail_url": "thumbnail_url",
                  "type": "image",
                  "width": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GalleryFile(
            links: Optional([
                GalleryFileLinksItem(
                    href: Optional("href"),
                    method: Optional(GalleryFileLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            folderId: Optional(1),
            fullSizeUrl: Optional("full_size_url"),
            height: Optional(1),
            id: Optional(1),
            name: Optional("name"),
            size: Optional(1),
            thumbnailUrl: Optional("thumbnail_url"),
            type: Optional(GalleryFileType.image),
            width: Optional(1)
        )
        let response = try await client.fileManager.getFile(
            fileId: "file_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateFile1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "folder_id": 1,
                  "full_size_url": "full_size_url",
                  "height": 1,
                  "id": 1,
                  "name": "name",
                  "size": 1,
                  "thumbnail_url": "thumbnail_url",
                  "type": "image",
                  "width": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GalleryFile(
            links: Optional([
                GalleryFileLinksItem(
                    href: Optional("href"),
                    method: Optional(GalleryFileLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            folderId: Optional(1),
            fullSizeUrl: Optional("full_size_url"),
            height: Optional(1),
            id: Optional(1),
            name: Optional("name"),
            size: Optional(1),
            thumbnailUrl: Optional("thumbnail_url"),
            type: Optional(GalleryFileType.image),
            width: Optional(1)
        )
        let response = try await client.fileManager.updateFile(
            fileId: "file_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listFolders1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "folders": [
                    {
                      "_links": [
                        {}
                      ],
                      "created_at": "2024-01-15T09:30:00Z",
                      "created_by": "created_by",
                      "file_count": 1,
                      "id": 1,
                      "name": "name"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListFoldersFileManagerResponse(
            links: Optional([
                ListFoldersFileManagerResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListFoldersFileManagerResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            folders: Optional([
                ListFoldersFileManagerResponseFoldersItem(
                    links: Optional([
                        ListFoldersFileManagerResponseFoldersItemLinksItem(

                        )
                    ]),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdBy: Optional("created_by"),
                    fileCount: Optional(1),
                    id: Optional(1),
                    name: Optional("name")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.fileManager.listFolders(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createFolder1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "file_count": 1,
                  "id": 1,
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateFolderFileManagerResponse(
            links: Optional([
                CreateFolderFileManagerResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(CreateFolderFileManagerResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            fileCount: Optional(1),
            id: Optional(1),
            name: Optional("name")
        )
        let response = try await client.fileManager.createFolder(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getFolder1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "file_count": 1,
                  "id": 1,
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetFolderFileManagerResponse(
            links: Optional([
                GetFolderFileManagerResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(GetFolderFileManagerResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            fileCount: Optional(1),
            id: Optional(1),
            name: Optional("name")
        )
        let response = try await client.fileManager.getFolder(
            folderId: "folder_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateFolder1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by": "created_by",
                  "file_count": 1,
                  "id": 1,
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UpdateFolderFileManagerResponse(
            links: Optional([
                UpdateFolderFileManagerResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(UpdateFolderFileManagerResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdBy: Optional("created_by"),
            fileCount: Optional(1),
            id: Optional(1),
            name: Optional("name")
        )
        let response = try await client.fileManager.updateFolder(
            folderId: "folder_id",
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listFolderFiles1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "files": [
                    {
                      "_links": [
                        {}
                      ],
                      "created_at": "2024-01-15T09:30:00Z",
                      "created_by": "created_by",
                      "folder_id": 1,
                      "full_size_url": "full_size_url",
                      "height": 1,
                      "id": 1,
                      "name": "name",
                      "size": 1,
                      "thumbnail_url": "thumbnail_url",
                      "type": "image",
                      "width": 1
                    }
                  ],
                  "total_file_size": 1.1,
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListFolderFilesFileManagerResponse(
            links: Optional([
                ListFolderFilesFileManagerResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListFolderFilesFileManagerResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            files: Optional([
                GalleryFile(
                    links: Optional([
                        GalleryFileLinksItem(

                        )
                    ]),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdBy: Optional("created_by"),
                    folderId: Optional(1),
                    fullSizeUrl: Optional("full_size_url"),
                    height: Optional(1),
                    id: Optional(1),
                    name: Optional("name"),
                    size: Optional(1),
                    thumbnailUrl: Optional("thumbnail_url"),
                    type: Optional(GalleryFileType.image),
                    width: Optional(1)
                )
            ]),
            totalFileSize: Optional(1.1),
            totalItems: Optional(1)
        )
        let response = try await client.fileManager.listFolderFiles(
            folderId: "folder_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}