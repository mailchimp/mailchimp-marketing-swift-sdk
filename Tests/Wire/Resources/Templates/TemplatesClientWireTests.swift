import Foundation
import Testing
import Mailchimp

@Suite("TemplatesClient Wire Tests") struct TemplatesClientWireTests {
    @Test func list1() async throws -> Void {
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
                  "templates": [
                    {
                      "_links": [
                        {}
                      ],
                      "active": true,
                      "category": "category",
                      "content_type": "template",
                      "created_by": "created_by",
                      "date_created": "2024-01-15T09:30:00Z",
                      "date_edited": "2024-01-15T09:30:00Z",
                      "drag_and_drop": true,
                      "edited_by": "edited_by",
                      "folder_id": "folder_id",
                      "id": 1,
                      "name": "name",
                      "responsive": true,
                      "share_url": "share_url",
                      "thumbnail": "thumbnail",
                      "type": "type"
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
        let expectedResponse = ListTemplatesResponse(
            links: Optional([
                ListTemplatesResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListTemplatesResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            templates: Optional([
                TemplateInstance(
                    links: Optional([
                        TemplateInstanceLinksItem(

                        )
                    ]),
                    active: Optional(true),
                    category: Optional("category"),
                    contentType: Optional(TemplateInstanceContentType.template),
                    createdBy: Optional("created_by"),
                    dateCreated: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    dateEdited: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    dragAndDrop: Optional(true),
                    editedBy: Optional("edited_by"),
                    folderId: Optional("folder_id"),
                    id: Optional(1),
                    name: Optional("name"),
                    responsive: Optional(true),
                    shareUrl: Optional("share_url"),
                    thumbnail: Optional("thumbnail"),
                    type: Optional("type")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.templates.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
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
                  "active": true,
                  "category": "category",
                  "content_type": "template",
                  "created_by": "created_by",
                  "date_created": "2024-01-15T09:30:00Z",
                  "date_edited": "2024-01-15T09:30:00Z",
                  "drag_and_drop": true,
                  "edited_by": "edited_by",
                  "folder_id": "folder_id",
                  "id": 1,
                  "name": "name",
                  "responsive": true,
                  "share_url": "share_url",
                  "thumbnail": "thumbnail",
                  "type": "type"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TemplateInstance(
            links: Optional([
                TemplateInstanceLinksItem(
                    href: Optional("href"),
                    method: Optional(TemplateInstanceLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            active: Optional(true),
            category: Optional("category"),
            contentType: Optional(TemplateInstanceContentType.template),
            createdBy: Optional("created_by"),
            dateCreated: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            dateEdited: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            dragAndDrop: Optional(true),
            editedBy: Optional("edited_by"),
            folderId: Optional("folder_id"),
            id: Optional(1),
            name: Optional("name"),
            responsive: Optional(true),
            shareUrl: Optional("share_url"),
            thumbnail: Optional("thumbnail"),
            type: Optional("type")
        )
        let response = try await client.templates.create(
            request: .init(
                html: "html",
                name: "Freddie's Jokes"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get1() async throws -> Void {
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
                  "active": true,
                  "category": "category",
                  "content_type": "template",
                  "created_by": "created_by",
                  "date_created": "2024-01-15T09:30:00Z",
                  "date_edited": "2024-01-15T09:30:00Z",
                  "drag_and_drop": true,
                  "edited_by": "edited_by",
                  "folder_id": "folder_id",
                  "id": 1,
                  "name": "name",
                  "responsive": true,
                  "share_url": "share_url",
                  "thumbnail": "thumbnail",
                  "type": "type"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TemplateInstance(
            links: Optional([
                TemplateInstanceLinksItem(
                    href: Optional("href"),
                    method: Optional(TemplateInstanceLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            active: Optional(true),
            category: Optional("category"),
            contentType: Optional(TemplateInstanceContentType.template),
            createdBy: Optional("created_by"),
            dateCreated: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            dateEdited: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            dragAndDrop: Optional(true),
            editedBy: Optional("edited_by"),
            folderId: Optional("folder_id"),
            id: Optional(1),
            name: Optional("name"),
            responsive: Optional(true),
            shareUrl: Optional("share_url"),
            thumbnail: Optional("thumbnail"),
            type: Optional("type")
        )
        let response = try await client.templates.get(
            templateId: "template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func update1() async throws -> Void {
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
                  "active": true,
                  "category": "category",
                  "content_type": "template",
                  "created_by": "created_by",
                  "date_created": "2024-01-15T09:30:00Z",
                  "date_edited": "2024-01-15T09:30:00Z",
                  "drag_and_drop": true,
                  "edited_by": "edited_by",
                  "folder_id": "folder_id",
                  "id": 1,
                  "name": "name",
                  "responsive": true,
                  "share_url": "share_url",
                  "thumbnail": "thumbnail",
                  "type": "type"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TemplateInstance(
            links: Optional([
                TemplateInstanceLinksItem(
                    href: Optional("href"),
                    method: Optional(TemplateInstanceLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            active: Optional(true),
            category: Optional("category"),
            contentType: Optional(TemplateInstanceContentType.template),
            createdBy: Optional("created_by"),
            dateCreated: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            dateEdited: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            dragAndDrop: Optional(true),
            editedBy: Optional("edited_by"),
            folderId: Optional("folder_id"),
            id: Optional(1),
            name: Optional("name"),
            responsive: Optional(true),
            shareUrl: Optional("share_url"),
            thumbnail: Optional("thumbnail"),
            type: Optional("type")
        )
        let response = try await client.templates.update(
            templateId: "template_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listDefaultContent1() async throws -> Void {
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
                  "sections": {
                    "key": "value"
                  }
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListDefaultContentTemplatesResponse(
            links: Optional([
                ListDefaultContentTemplatesResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListDefaultContentTemplatesResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            sections: Optional([
                "key": JSONValue.string("value")
            ])
        )
        let response = try await client.templates.listDefaultContent(
            templateId: "template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}