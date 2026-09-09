import Foundation
import Testing
import Mailchimp

@Suite("VerifiedDomainsClient Wire Tests") struct VerifiedDomainsClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "domains": [
                    {
                      "authenticated": true,
                      "domain": "domain",
                      "is_free_email_provider": true,
                      "status": "VERIFICATION_IN_PROGRESS",
                      "verification_email": "verification_email",
                      "verification_sent": "2024-01-15T09:30:00Z",
                      "verified": true
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
        let expectedResponse = ListVerifiedDomainsResponse(
            domains: Optional([
                ListVerifiedDomainsResponseDomainsItem(
                    authenticated: Optional(true),
                    domain: Optional("domain"),
                    isFreeEmailProvider: Optional(true),
                    status: Optional(ListVerifiedDomainsResponseDomainsItemStatus.verificationInProgress),
                    verificationEmail: Optional("verification_email"),
                    verificationSent: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    verified: Optional(true)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.verifiedDomains.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "authenticated": true,
                  "domain": "domain",
                  "is_free_email_provider": true,
                  "status": "VERIFICATION_IN_PROGRESS",
                  "verification_email": "verification_email",
                  "verification_sent": "2024-01-15T09:30:00Z",
                  "verified": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateVerifiedDomainsResponse(
            authenticated: Optional(true),
            domain: Optional("domain"),
            isFreeEmailProvider: Optional(true),
            status: Optional(CreateVerifiedDomainsResponseStatus.verificationInProgress),
            verificationEmail: Optional("verification_email"),
            verificationSent: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            verified: Optional(true)
        )
        let response = try await client.verifiedDomains.create(
            request: .init(verificationEmail: "verification_email"),
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
                  "authenticated": true,
                  "domain": "domain",
                  "is_free_email_provider": true,
                  "status": "VERIFICATION_IN_PROGRESS",
                  "verification_email": "verification_email",
                  "verification_sent": "2024-01-15T09:30:00Z",
                  "verified": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetVerifiedDomainsResponse(
            authenticated: Optional(true),
            domain: Optional("domain"),
            isFreeEmailProvider: Optional(true),
            status: Optional(GetVerifiedDomainsResponseStatus.verificationInProgress),
            verificationEmail: Optional("verification_email"),
            verificationSent: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            verified: Optional(true)
        )
        let response = try await client.verifiedDomains.get(
            domainName: "domain_name",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createActionVerify1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "authenticated": true,
                  "domain": "domain",
                  "is_free_email_provider": true,
                  "status": "VERIFICATION_IN_PROGRESS",
                  "verification_email": "verification_email",
                  "verification_sent": "2024-01-15T09:30:00Z",
                  "verified": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateActionVerifyVerifiedDomainsResponse(
            authenticated: Optional(true),
            domain: Optional("domain"),
            isFreeEmailProvider: Optional(true),
            status: Optional(CreateActionVerifyVerifiedDomainsResponseStatus.verificationInProgress),
            verificationEmail: Optional("verification_email"),
            verificationSent: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            verified: Optional(true)
        )
        let response = try await client.verifiedDomains.createActionVerify(
            domainName: "domain_name",
            request: .init(code: "code"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}