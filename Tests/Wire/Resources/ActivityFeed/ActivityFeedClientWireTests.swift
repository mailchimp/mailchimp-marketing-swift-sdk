import Foundation
import Testing
import Mailchimp

@Suite("ActivityFeedClient Wire Tests") struct ActivityFeedClientWireTests {
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
            ListActivityFeedResponseItem(
                href: Optional("href"),
                method: Optional(ListActivityFeedResponseItemMethod.get),
                rel: Optional("rel"),
                schema: Optional("schema"),
                targetSchema: Optional("targetSchema")
            )
        ]
        let response = try await client.activityFeed.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listChimpChatter1() async throws -> Void {
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
                  "chimp_chatter": [
                    {
                      "campaign_id": "2017-08-04T11:09:01+00:00",
                      "list_id": "2017-08-04T11:09:01+00:00",
                      "message": "People are telling their friends about your campaign!",
                      "title": "1 new subscriber to Your New Campaign!",
                      "type": "lists:new-subscriber",
                      "update_time": "2017-08-04T11:09:01Z",
                      "url": "http://dev.mailchimp.com/reports/summary?id=1"
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
        let expectedResponse = ListChimpChatterActivityFeedResponse(
            links: Optional([
                ListChimpChatterActivityFeedResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListChimpChatterActivityFeedResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            chimpChatter: Optional([
                ListChimpChatterActivityFeedResponseChimpChatterItem(
                    campaignId: Optional("2017-08-04T11:09:01+00:00"),
                    listId: Optional("2017-08-04T11:09:01+00:00"),
                    message: Optional("People are telling their friends about your campaign!"),
                    title: Optional("1 new subscriber to Your New Campaign!"),
                    type: Optional(ListChimpChatterActivityFeedResponseChimpChatterItemType.listsNewSubscriber),
                    updateTime: Optional(try! Date("2017-08-04T11:09:01Z", strategy: .iso8601)),
                    url: Optional("http://dev.mailchimp.com/reports/summary?id=1")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.activityFeed.listChimpChatter(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}