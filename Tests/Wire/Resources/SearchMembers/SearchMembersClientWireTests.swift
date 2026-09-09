import Foundation
import Testing
import Mailchimp

@Suite("SearchMembersClient Wire Tests") struct SearchMembersClientWireTests {
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
                  "exact_matches": {
                    "members": [
                      {
                        "stats": {
                          "ecommerce_data": {
                            "currency_code": "USD"
                          }
                        }
                      }
                    ],
                    "total_items": 1
                  },
                  "full_search": {
                    "members": [
                      {
                        "stats": {
                          "ecommerce_data": {
                            "currency_code": "USD"
                          }
                        }
                      }
                    ],
                    "total_items": 1
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
        let expectedResponse = ListSearchMembersResponse(
            links: Optional([
                ListSearchMembersResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSearchMembersResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            exactMatches: Optional(ListSearchMembersResponseExactMatches(
                members: Optional([
                    ListMembers(
                        stats: Optional(ListMembersStats(
                            ecommerceData: Optional(ListMembersStatsEcommerceData(
                                currencyCode: Optional("USD")
                            ))
                        ))
                    )
                ]),
                totalItems: Optional(1)
            )),
            fullSearch: Optional(ListSearchMembersResponseFullSearch(
                members: Optional([
                    ListMembers(
                        stats: Optional(ListMembersStats(
                            ecommerceData: Optional(ListMembersStatsEcommerceData(
                                currencyCode: Optional("USD")
                            ))
                        ))
                    )
                ]),
                totalItems: Optional(1)
            ))
        )
        let response = try await client.searchMembers.list(
            query: "query",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}