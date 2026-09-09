import Foundation
import Testing
import Mailchimp

@Suite("SearchCampaignsClient Wire Tests") struct SearchCampaignsClientWireTests {
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
                  "results": [
                    {
                      "campaign": {
                        "recipients": {
                          "segment_opts": {
                            "conditions": [
                              {
                                "value": "any",
                                "condition_type": "Aim"
                              }
                            ],
                            "prebuilt_segment_id": "subscribers-female"
                          }
                        }
                      },
                      "snippet": "snippet"
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
        let expectedResponse = ListSearchCampaignsResponse(
            links: Optional([
                ListSearchCampaignsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSearchCampaignsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            results: Optional([
                ListSearchCampaignsResponseResultsItem(
                    campaign: Optional(Campaigns(
                        recipients: Optional(CampaignsRecipients(
                            segmentOpts: Optional(CampaignsRecipientsSegmentOpts(
                                conditions: Optional([
                                    SegmentTypeItem.aim(
                                        .init(
                                            value: Optional("any"),
                                            additionalProperties: [
                                                "condition_type": JSONValue.string("Aim")
                                            ]
                                        )
                                    )
                                ]),
                                prebuiltSegmentId: Optional("subscribers-female")
                            ))
                        ))
                    )),
                    snippet: Optional("snippet")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.searchCampaigns.list(
            query: "query",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}