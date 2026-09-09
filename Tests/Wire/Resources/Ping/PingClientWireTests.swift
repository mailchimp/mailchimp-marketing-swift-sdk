import Foundation
import Testing
import Mailchimp

@Suite("PingClient Wire Tests") struct PingClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "health_status": "\"Everything's Chimpy!\""
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListPingResponse(
            healthStatus: Optional("\"Everything's Chimpy!\"")
        )
        let response = try await client.ping.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}