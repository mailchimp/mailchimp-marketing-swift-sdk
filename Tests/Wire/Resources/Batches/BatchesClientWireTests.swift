import Foundation
import Testing
import Mailchimp

@Suite("BatchesClient Wire Tests") struct BatchesClientWireTests {
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
                  "batches": [
                    {
                      "_links": [
                        {}
                      ],
                      "completed_at": "",
                      "errored_operations": 1,
                      "finished_operations": 1,
                      "id": "id",
                      "response_body_url": "response_body_url",
                      "status": "pending",
                      "submitted_at": "2024-01-15T09:30:00Z",
                      "total_operations": 1
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
        let expectedResponse = ListBatchesResponse(
            links: Optional([
                ListBatchesResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListBatchesResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            batches: Optional([
                Batch(
                    links: Optional([
                        BatchLinksItem(

                        )
                    ]),
                    completedAt: Optional(BatchCompletedAt.batchCompletedAtOne(
                        BatchCompletedAtOne.empty
                    )),
                    erroredOperations: Optional(1),
                    finishedOperations: Optional(1),
                    id: Optional("id"),
                    responseBodyUrl: Optional("response_body_url"),
                    status: Optional(BatchStatus.pending),
                    submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    totalOperations: Optional(1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.batches.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "completed_at": "",
                  "errored_operations": 1,
                  "finished_operations": 1,
                  "id": "id",
                  "response_body_url": "response_body_url",
                  "status": "pending",
                  "submitted_at": "2024-01-15T09:30:00Z",
                  "total_operations": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Batch(
            links: Optional([
                BatchLinksItem(
                    href: Optional("href"),
                    method: Optional(BatchLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            completedAt: Optional(BatchCompletedAt.batchCompletedAtOne(
                BatchCompletedAtOne.empty
            )),
            erroredOperations: Optional(1),
            finishedOperations: Optional(1),
            id: Optional("id"),
            responseBodyUrl: Optional("response_body_url"),
            status: Optional(BatchStatus.pending),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            totalOperations: Optional(1)
        )
        let response = try await client.batches.create(
            request: .init(operations: [
                CreateBatchesRequestOperationsItem(
                    method: .get,
                    path: "/lists"
                )
            ]),
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
                  "completed_at": "",
                  "errored_operations": 1,
                  "finished_operations": 1,
                  "id": "id",
                  "response_body_url": "response_body_url",
                  "status": "pending",
                  "submitted_at": "2024-01-15T09:30:00Z",
                  "total_operations": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Batch(
            links: Optional([
                BatchLinksItem(
                    href: Optional("href"),
                    method: Optional(BatchLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            completedAt: Optional(BatchCompletedAt.batchCompletedAtOne(
                BatchCompletedAtOne.empty
            )),
            erroredOperations: Optional(1),
            finishedOperations: Optional(1),
            id: Optional("id"),
            responseBodyUrl: Optional("response_body_url"),
            status: Optional(BatchStatus.pending),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            totalOperations: Optional(1)
        )
        let response = try await client.batches.get(
            batchId: "batch_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}