import Foundation
import Testing
import Mailchimp

@Suite("RootClient Wire Tests") struct RootClientWireTests {
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
                  "account_id": "account_id",
                  "account_industry": "account_industry",
                  "account_name": "account_name",
                  "account_timezone": "account_timezone",
                  "avatar_url": "avatar_url",
                  "contact": {
                    "addr1": "addr1",
                    "addr2": "addr2",
                    "city": "city",
                    "company": "company",
                    "country": "country",
                    "state": "state",
                    "zip": "zip"
                  },
                  "email": "email",
                  "first_name": "first_name",
                  "first_payment": "",
                  "industry_stats": {
                    "bounce_rate": 1.1,
                    "click_rate": 1.1,
                    "open_rate": 1.1
                  },
                  "last_login": "2024-01-15T09:30:00Z",
                  "last_name": "last_name",
                  "login_id": "login_id",
                  "member_since": "2010-01-01T23:59:59Z",
                  "pricing_plan_type": "monthly",
                  "pro_enabled": true,
                  "role": "role",
                  "total_subscribers": 1,
                  "username": "freddie2000"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListRootResponse(
            links: Optional([
                ListRootResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListRootResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            accountId: Optional("account_id"),
            accountIndustry: Optional("account_industry"),
            accountName: Optional("account_name"),
            accountTimezone: Optional("account_timezone"),
            avatarUrl: Optional("avatar_url"),
            contact: Optional(ListRootResponseContact(
                addr1: Optional("addr1"),
                addr2: Optional("addr2"),
                city: Optional("city"),
                company: Optional("company"),
                country: Optional("country"),
                state: Optional("state"),
                zip: Optional("zip")
            )),
            email: Optional("email"),
            firstName: Optional("first_name"),
            firstPayment: Optional(ListRootResponseFirstPayment.listRootResponseFirstPaymentOne(
                ListRootResponseFirstPaymentOne.empty
            )),
            industryStats: Optional(ListRootResponseIndustryStats(
                bounceRate: Optional(1.1),
                clickRate: Optional(1.1),
                openRate: Optional(1.1)
            )),
            lastLogin: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastName: Optional("last_name"),
            loginId: Optional("login_id"),
            memberSince: Optional(try! Date("2010-01-01T23:59:59Z", strategy: .iso8601)),
            pricingPlanType: Optional(ListRootResponsePricingPlanType.monthly),
            proEnabled: Optional(true),
            role: Optional("role"),
            totalSubscribers: Optional(1),
            username: Optional("freddie2000")
        )
        let response = try await client.root.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}