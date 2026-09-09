import Foundation
import Testing
import Mailchimp

@Suite("ReportsClient Wire Tests") struct ReportsClientWireTests {
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
                  "reports": [
                    {
                      "_links": [
                        {}
                      ],
                      "abuse_reports": 1,
                      "campaign_title": "campaign_title",
                      "ecommerce": {
                        "currency_code": "USD"
                      },
                      "emails_sent": 1,
                      "id": "id",
                      "list_id": "list_id",
                      "list_is_active": true,
                      "list_name": "list_name",
                      "preview_text": "preview_text",
                      "rss_last_send": "2024-01-15T09:30:00Z",
                      "send_time": "2024-01-15T09:30:00Z",
                      "subject_line": "subject_line",
                      "timeseries": [
                        {}
                      ],
                      "timewarp": [
                        {}
                      ],
                      "type": "type",
                      "unsubscribed": 1
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
        let expectedResponse = ListReportsResponse(
            links: Optional([
                ListReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            reports: Optional([
                CampaignReport(
                    links: Optional([
                        CampaignReportLinksItem(

                        )
                    ]),
                    abuseReports: Optional(1),
                    campaignTitle: Optional("campaign_title"),
                    ecommerce: Optional(CampaignReportEcommerce(
                        currencyCode: Optional("USD")
                    )),
                    emailsSent: Optional(1),
                    id: Optional("id"),
                    listId: Optional("list_id"),
                    listIsActive: Optional(true),
                    listName: Optional("list_name"),
                    previewText: Optional("preview_text"),
                    rssLastSend: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    subjectLine: Optional("subject_line"),
                    timeseries: Optional([
                        CampaignReportTimeseriesItem(

                        )
                    ]),
                    timewarp: Optional([
                        CampaignReportTimewarpItem(

                        )
                    ]),
                    type: Optional("type"),
                    unsubscribed: Optional(1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reports.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "ab_split": {
                    "a": {
                      "abuse_reports": 1,
                      "bounces": 1,
                      "forwards": 1,
                      "forwards_opens": 1,
                      "last_open": "last_open",
                      "opens": 1,
                      "recipient_clicks": 1,
                      "unique_opens": 1,
                      "unsubs": 1
                    },
                    "b": {
                      "abuse_reports": 1,
                      "bounces": 1,
                      "forwards": 1,
                      "forwards_opens": 1,
                      "last_open": "last_open",
                      "opens": 1,
                      "recipient_clicks": 1,
                      "unique_opens": 1,
                      "unsubs": 1
                    }
                  },
                  "abuse_reports": 1,
                  "bounces": {
                    "hard_bounces": 1,
                    "soft_bounces": 1,
                    "syntax_errors": 1
                  },
                  "campaign_title": "campaign_title",
                  "clicks": {
                    "click_rate": 1.1,
                    "clicks_total": 1,
                    "last_click": "2024-01-15T09:30:00Z",
                    "unique_clicks": 1,
                    "unique_subscriber_clicks": 1
                  },
                  "delivery_status": {
                    "can_cancel": true,
                    "emails_canceled": 1,
                    "emails_sent": 1,
                    "enabled": true,
                    "status": "delivering"
                  },
                  "ecommerce": {
                    "currency_code": "USD",
                    "total_orders": 1,
                    "total_revenue": 1.1,
                    "total_spent": 1.1
                  },
                  "emails_sent": 1,
                  "facebook_likes": {
                    "facebook_likes": 1,
                    "recipient_likes": 1,
                    "unique_likes": 1
                  },
                  "forwards": {
                    "forwards_count": 1,
                    "forwards_opens": 1
                  },
                  "id": "id",
                  "industry_stats": {
                    "abuse_rate": 1.1,
                    "bounce_rate": 1.1,
                    "click_rate": 1.1,
                    "open_rate": 1.1,
                    "type": "type",
                    "unopen_rate": 1.1,
                    "unsub_rate": 1.1
                  },
                  "list_id": "list_id",
                  "list_is_active": true,
                  "list_name": "list_name",
                  "list_stats": {
                    "click_rate": 1.1,
                    "open_rate": 1.1,
                    "proxy_excluded_open_rate": 1.1,
                    "sub_rate": 1.1,
                    "unsub_rate": 1.1
                  },
                  "opens": {
                    "last_open": "2024-01-15T09:30:00Z",
                    "open_rate": 1.1,
                    "opens_total": 1,
                    "proxy_excluded_open_rate": 1.1,
                    "proxy_excluded_opens": 1,
                    "proxy_excluded_unique_opens": 1,
                    "unique_opens": 1
                  },
                  "preview_text": "preview_text",
                  "rss_last_send": "2024-01-15T09:30:00Z",
                  "send_time": "2024-01-15T09:30:00Z",
                  "share_report": {
                    "share_password": "share_password",
                    "share_url": "share_url"
                  },
                  "subject_line": "subject_line",
                  "timeseries": [
                    {
                      "emails_sent": 1,
                      "proxy_excluded_unique_opens": 1,
                      "recipients_clicks": 1,
                      "timestamp": "2024-01-15T09:30:00Z",
                      "unique_opens": 1
                    }
                  ],
                  "timewarp": [
                    {
                      "bounces": 1,
                      "clicks": 1,
                      "gmt_offset": 1,
                      "last_click": "2024-01-15T09:30:00Z",
                      "last_open": "2024-01-15T09:30:00Z",
                      "opens": 1,
                      "unique_clicks": 1,
                      "unique_opens": 1
                    }
                  ],
                  "type": "type",
                  "unsubscribed": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CampaignReport(
            links: Optional([
                CampaignReportLinksItem(
                    href: Optional("href"),
                    method: Optional(CampaignReportLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            abSplit: Optional(CampaignReportAbSplit(
                a: Optional(CampaignReportAbSplitA(
                    abuseReports: Optional(1),
                    bounces: Optional(1),
                    forwards: Optional(1),
                    forwardsOpens: Optional(1),
                    lastOpen: Optional("last_open"),
                    opens: Optional(1),
                    recipientClicks: Optional(1),
                    uniqueOpens: Optional(1),
                    unsubs: Optional(1)
                )),
                b: Optional(CampaignReportAbSplitB(
                    abuseReports: Optional(1),
                    bounces: Optional(1),
                    forwards: Optional(1),
                    forwardsOpens: Optional(1),
                    lastOpen: Optional("last_open"),
                    opens: Optional(1),
                    recipientClicks: Optional(1),
                    uniqueOpens: Optional(1),
                    unsubs: Optional(1)
                ))
            )),
            abuseReports: Optional(1),
            bounces: Optional(CampaignReportBounces(
                hardBounces: Optional(1),
                softBounces: Optional(1),
                syntaxErrors: Optional(1)
            )),
            campaignTitle: Optional("campaign_title"),
            clicks: Optional(CampaignReportClicks(
                clickRate: Optional(1.1),
                clicksTotal: Optional(1),
                lastClick: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                uniqueClicks: Optional(1),
                uniqueSubscriberClicks: Optional(1)
            )),
            deliveryStatus: Optional(CampaignReportDeliveryStatus(
                canCancel: Optional(true),
                emailsCanceled: Optional(1),
                emailsSent: Optional(1),
                enabled: Optional(true),
                status: Optional(CampaignReportDeliveryStatusStatus.delivering)
            )),
            ecommerce: Optional(CampaignReportEcommerce(
                currencyCode: Optional("USD"),
                totalOrders: Optional(1),
                totalRevenue: Optional(1.1),
                totalSpent: Optional(1.1)
            )),
            emailsSent: Optional(1),
            facebookLikes: Optional(CampaignReportFacebookLikes(
                facebookLikes: Optional(1),
                recipientLikes: Optional(1),
                uniqueLikes: Optional(1)
            )),
            forwards: Optional(CampaignReportForwards(
                forwardsCount: Optional(1),
                forwardsOpens: Optional(1)
            )),
            id: Optional("id"),
            industryStats: Optional(CampaignReportIndustryStats(
                abuseRate: Optional(1.1),
                bounceRate: Optional(1.1),
                clickRate: Optional(1.1),
                openRate: Optional(1.1),
                type: Optional("type"),
                unopenRate: Optional(1.1),
                unsubRate: Optional(1.1)
            )),
            listId: Optional("list_id"),
            listIsActive: Optional(true),
            listName: Optional("list_name"),
            listStats: Optional(CampaignReportListStats(
                clickRate: Optional(1.1),
                openRate: Optional(1.1),
                proxyExcludedOpenRate: Optional(1.1),
                subRate: Optional(1.1),
                unsubRate: Optional(1.1)
            )),
            opens: Optional(CampaignReportOpens(
                lastOpen: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                openRate: Optional(1.1),
                opensTotal: Optional(1),
                proxyExcludedOpenRate: Optional(1.1),
                proxyExcludedOpens: Optional(1),
                proxyExcludedUniqueOpens: Optional(1),
                uniqueOpens: Optional(1)
            )),
            previewText: Optional("preview_text"),
            rssLastSend: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            shareReport: Optional(CampaignReportShareReport(
                sharePassword: Optional("share_password"),
                shareUrl: Optional("share_url")
            )),
            subjectLine: Optional("subject_line"),
            timeseries: Optional([
                CampaignReportTimeseriesItem(
                    emailsSent: Optional(1),
                    proxyExcludedUniqueOpens: Optional(1),
                    recipientsClicks: Optional(1),
                    timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uniqueOpens: Optional(1)
                )
            ]),
            timewarp: Optional([
                CampaignReportTimewarpItem(
                    bounces: Optional(1),
                    clicks: Optional(1),
                    gmtOffset: Optional(1),
                    lastClick: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastOpen: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    opens: Optional(1),
                    uniqueClicks: Optional(1),
                    uniqueOpens: Optional(1)
                )
            ]),
            type: Optional("type"),
            unsubscribed: Optional(1)
        )
        let response = try await client.reports.get(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listAbuseReports1() async throws -> Void {
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
                  "abuse_reports": [
                    {
                      "_links": [
                        {}
                      ],
                      "campaign_id": "campaign_id",
                      "date": "2024-01-15T09:30:00Z",
                      "email_address": "email_address",
                      "email_id": "email_id",
                      "id": 1,
                      "list_id": "list_id",
                      "list_is_active": true,
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "vip": true
                    }
                  ],
                  "campaign_id": "campaign_id",
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
        let expectedResponse = ListAbuseReportsReportsResponse(
            links: Optional([
                ListAbuseReportsReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListAbuseReportsReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            abuseReports: Optional([
                AbuseComplaint(
                    links: Optional([
                        AbuseComplaintLinksItem(

                        )
                    ]),
                    campaignId: Optional("campaign_id"),
                    date: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    emailAddress: Optional("email_address"),
                    emailId: Optional("email_id"),
                    id: Optional(1),
                    listId: Optional("list_id"),
                    listIsActive: Optional(true),
                    mergeFields: Optional([
                        "key": AbuseComplaintMergeFieldsValue.abuseComplaintMergeFieldsValueAddr1(
                            AbuseComplaintMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    vip: Optional(true)
                )
            ]),
            campaignId: Optional("campaign_id"),
            totalItems: Optional(1)
        )
        let response = try await client.reports.listAbuseReports(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getAbuseReport1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "date": "2024-01-15T09:30:00Z",
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "id": 1,
                  "list_id": "list_id",
                  "list_is_active": true,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "vip": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AbuseComplaint(
            links: Optional([
                AbuseComplaintLinksItem(
                    href: Optional("href"),
                    method: Optional(AbuseComplaintLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            date: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            id: Optional(1),
            listId: Optional("list_id"),
            listIsActive: Optional(true),
            mergeFields: Optional([
                "key": AbuseComplaintMergeFieldsValue.abuseComplaintMergeFieldsValueAddr1(
                    AbuseComplaintMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            vip: Optional(true)
        )
        let response = try await client.reports.getAbuseReport(
            campaignId: "campaign_id",
            reportId: "report_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listAdvice1() async throws -> Void {
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
                  "advice": [
                    {
                      "_links": [
                        {}
                      ],
                      "message": "message",
                      "type": "negative"
                    }
                  ],
                  "campaign_id": "campaign_id",
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
        let expectedResponse = ListAdviceReportsResponse(
            links: Optional([
                ListAdviceReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListAdviceReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            advice: Optional([
                ListAdviceReportsResponseAdviceItem(
                    links: Optional([
                        ListAdviceReportsResponseAdviceItemLinksItem(

                        )
                    ]),
                    message: Optional("message"),
                    type: Optional(ListAdviceReportsResponseAdviceItemType.negative)
                )
            ]),
            campaignId: Optional("campaign_id"),
            totalItems: Optional(1)
        )
        let response = try await client.reports.listAdvice(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listClickDetails1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "total_items": 1,
                  "urls_clicked": [
                    {
                      "_links": [
                        {}
                      ],
                      "campaign_id": "campaign_id",
                      "click_percentage": 1.1,
                      "id": "id",
                      "last_click": "2024-01-15T09:30:00Z",
                      "total_clicks": 1,
                      "unique_click_percentage": 1.1,
                      "unique_clicks": 1,
                      "url": "url"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListClickDetailsReportsResponse(
            links: Optional([
                ListClickDetailsReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListClickDetailsReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            totalItems: Optional(1),
            urlsClicked: Optional([
                ClickDetailReport(
                    links: Optional([
                        ClickDetailReportLinksItem(

                        )
                    ]),
                    campaignId: Optional("campaign_id"),
                    clickPercentage: Optional(1.1),
                    id: Optional("id"),
                    lastClick: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    totalClicks: Optional(1),
                    uniqueClickPercentage: Optional(1.1),
                    uniqueClicks: Optional(1),
                    url: Optional("url")
                )
            ])
        )
        let response = try await client.reports.listClickDetails(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getClickDetail1() async throws -> Void {
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
                  "ab_split": {
                    "a": {
                      "click_percentage_a": 1.1,
                      "total_clicks_a": 1,
                      "unique_click_percentage_a": 1.1,
                      "unique_clicks_a": 1
                    },
                    "b": {
                      "click_percentage_b": 1.1,
                      "total_clicks_b": 1,
                      "unique_click_percentage_b": 1.1,
                      "unique_clicks_b": 1
                    }
                  },
                  "campaign_id": "campaign_id",
                  "click_percentage": 1.1,
                  "id": "id",
                  "last_click": "2024-01-15T09:30:00Z",
                  "total_clicks": 1,
                  "unique_click_percentage": 1.1,
                  "unique_clicks": 1,
                  "url": "url"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ClickDetailReport(
            links: Optional([
                ClickDetailReportLinksItem(
                    href: Optional("href"),
                    method: Optional(ClickDetailReportLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            abSplit: Optional(ClickDetailReportAbSplit(
                a: Optional(ClickDetailReportAbSplitA(
                    clickPercentageA: Optional(1.1),
                    totalClicksA: Optional(1),
                    uniqueClickPercentageA: Optional(1.1),
                    uniqueClicksA: Optional(1)
                )),
                b: Optional(ClickDetailReportAbSplitB(
                    clickPercentageB: Optional(1.1),
                    totalClicksB: Optional(1),
                    uniqueClickPercentageB: Optional(1.1),
                    uniqueClicksB: Optional(1)
                ))
            )),
            campaignId: Optional("campaign_id"),
            clickPercentage: Optional(1.1),
            id: Optional("id"),
            lastClick: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            totalClicks: Optional(1),
            uniqueClickPercentage: Optional(1.1),
            uniqueClicks: Optional(1),
            url: Optional("url")
        )
        let response = try await client.reports.getClickDetail(
            campaignId: "campaign_id",
            linkId: "link_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listClickDetailMembers1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "members": [
                    {
                      "_links": [
                        {}
                      ],
                      "campaign_id": "campaign_id",
                      "clicks": 1,
                      "contact_status": "contact_status",
                      "email_address": "email_address",
                      "email_id": "email_id",
                      "list_id": "list_id",
                      "list_is_active": true,
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "url_id": "url_id",
                      "vip": true
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
        let expectedResponse = ListClickDetailMembersReportsResponse(
            links: Optional([
                ListClickDetailMembersReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListClickDetailMembersReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            members: Optional([
                ClickDetailMember(
                    links: Optional([
                        ClickDetailMemberLinksItem(

                        )
                    ]),
                    campaignId: Optional("campaign_id"),
                    clicks: Optional(1),
                    contactStatus: Optional("contact_status"),
                    emailAddress: Optional("email_address"),
                    emailId: Optional("email_id"),
                    listId: Optional("list_id"),
                    listIsActive: Optional(true),
                    mergeFields: Optional([
                        "key": ClickDetailMemberMergeFieldsValue.clickDetailMemberMergeFieldsValueAddr1(
                            ClickDetailMemberMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    urlId: Optional("url_id"),
                    vip: Optional(true)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reports.listClickDetailMembers(
            campaignId: "campaign_id",
            linkId: "link_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getClickDetailMember1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "clicks": 1,
                  "contact_status": "contact_status",
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "list_id": "list_id",
                  "list_is_active": true,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "url_id": "url_id",
                  "vip": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ClickDetailMember(
            links: Optional([
                ClickDetailMemberLinksItem(
                    href: Optional("href"),
                    method: Optional(ClickDetailMemberLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            clicks: Optional(1),
            contactStatus: Optional("contact_status"),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            listId: Optional("list_id"),
            listIsActive: Optional(true),
            mergeFields: Optional([
                "key": ClickDetailMemberMergeFieldsValue.clickDetailMemberMergeFieldsValueAddr1(
                    ClickDetailMemberMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            urlId: Optional("url_id"),
            vip: Optional(true)
        )
        let response = try await client.reports.getClickDetailMember(
            campaignId: "campaign_id",
            linkId: "link_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listDomainPerformance1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "domains": [
                    {
                      "bounces": 1,
                      "bounces_pct": 1.1,
                      "clicks": 1,
                      "clicks_pct": 1.1,
                      "delivered": 1,
                      "domain": "domain",
                      "emails_pct": 1.1,
                      "emails_sent": 1,
                      "opens": 1,
                      "opens_pct": 1.1,
                      "unsubs": 1,
                      "unsubs_pct": 1.1
                    }
                  ],
                  "total_items": 1,
                  "total_sent": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListDomainPerformanceReportsResponse(
            links: Optional([
                ListDomainPerformanceReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListDomainPerformanceReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            domains: Optional([
                ListDomainPerformanceReportsResponseDomainsItem(
                    bounces: Optional(1),
                    bouncesPct: Optional(1.1),
                    clicks: Optional(1),
                    clicksPct: Optional(1.1),
                    delivered: Optional(1),
                    domain: Optional("domain"),
                    emailsPct: Optional(1.1),
                    emailsSent: Optional(1),
                    opens: Optional(1),
                    opensPct: Optional(1.1),
                    unsubs: Optional(1),
                    unsubsPct: Optional(1.1)
                )
            ]),
            totalItems: Optional(1),
            totalSent: Optional(1)
        )
        let response = try await client.reports.listDomainPerformance(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listEcommerceProductActivity1() async throws -> Void {
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
                  "products": [
                    {
                      "currency_code": "currency_code",
                      "image_url": "image_url",
                      "recommendation_purchased": 1,
                      "recommendation_total": 1,
                      "sku": "sku",
                      "title": "title",
                      "total_purchased": 1.1,
                      "total_revenue": 1.1
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
        let expectedResponse = ListEcommerceProductActivityReportsResponse(
            links: Optional([
                ListEcommerceProductActivityReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListEcommerceProductActivityReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            products: Optional([
                ListEcommerceProductActivityReportsResponseProductsItem(
                    currencyCode: Optional("currency_code"),
                    imageUrl: Optional("image_url"),
                    recommendationPurchased: Optional(1),
                    recommendationTotal: Optional(1),
                    sku: Optional("sku"),
                    title: Optional("title"),
                    totalPurchased: Optional(1.1),
                    totalRevenue: Optional(1.1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reports.listEcommerceProductActivity(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listEepurl1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "clicks": {
                    "clicks": 1,
                    "first_click": "2024-01-15T09:30:00Z",
                    "last_click": "2024-01-15T09:30:00Z",
                    "locations": [
                      {
                        "region": "NY"
                      }
                    ]
                  },
                  "eepurl": "eepurl",
                  "referrers": [
                    {
                      "clicks": 1,
                      "first_click": "2024-01-15T09:30:00Z",
                      "last_click": "2024-01-15T09:30:00Z",
                      "referrer": "referrer"
                    }
                  ],
                  "total_items": 1,
                  "twitter": {
                    "first_tweet": "first_tweet",
                    "last_tweet": "last_tweet",
                    "retweets": 1,
                    "statuses": [
                      {}
                    ],
                    "tweets": 1
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
        let expectedResponse = ListEepurlReportsResponse(
            links: Optional([
                ListEepurlReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListEepurlReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            clicks: Optional(ListEepurlReportsResponseClicks(
                clicks: Optional(1),
                firstClick: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastClick: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                locations: Optional([
                    ListEepurlReportsResponseClicksLocationsItem(
                        region: Optional("NY")
                    )
                ])
            )),
            eepurl: Optional("eepurl"),
            referrers: Optional([
                ListEepurlReportsResponseReferrersItem(
                    clicks: Optional(1),
                    firstClick: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastClick: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    referrer: Optional("referrer")
                )
            ]),
            totalItems: Optional(1),
            twitter: Optional(ListEepurlReportsResponseTwitter(
                firstTweet: Optional("first_tweet"),
                lastTweet: Optional("last_tweet"),
                retweets: Optional(1),
                statuses: Optional([
                    ListEepurlReportsResponseTwitterStatusesItem(

                    )
                ]),
                tweets: Optional(1)
            ))
        )
        let response = try await client.reports.listEepurl(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listEmailActivity1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "emails": [
                    {
                      "_links": [
                        {}
                      ],
                      "activity": [
                        {}
                      ],
                      "campaign_id": "campaign_id",
                      "email_address": "email_address",
                      "email_id": "email_id",
                      "list_id": "list_id",
                      "list_is_active": true
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
        let expectedResponse = ListEmailActivityReportsResponse(
            links: Optional([
                ListEmailActivityReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListEmailActivityReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            emails: Optional([
                EmailActivity(
                    links: Optional([
                        EmailActivityLinksItem(

                        )
                    ]),
                    activity: Optional([
                        EmailActivityActivityItem(

                        )
                    ]),
                    campaignId: Optional("campaign_id"),
                    emailAddress: Optional("email_address"),
                    emailId: Optional("email_id"),
                    listId: Optional("list_id"),
                    listIsActive: Optional(true)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reports.listEmailActivity(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getEmailActivity1() async throws -> Void {
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
                  "activity": [
                    {
                      "action": "action",
                      "ip": "ip",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "type": "type",
                      "url": "url"
                    }
                  ],
                  "campaign_id": "campaign_id",
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "list_id": "list_id",
                  "list_is_active": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EmailActivity(
            links: Optional([
                EmailActivityLinksItem(
                    href: Optional("href"),
                    method: Optional(EmailActivityLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            activity: Optional([
                EmailActivityActivityItem(
                    action: Optional("action"),
                    ip: Optional("ip"),
                    timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    type: Optional("type"),
                    url: Optional("url")
                )
            ]),
            campaignId: Optional("campaign_id"),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            listId: Optional("list_id"),
            listIsActive: Optional(true)
        )
        let response = try await client.reports.getEmailActivity(
            campaignId: "campaign_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listLocations1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "locations": [
                    {
                      "country_code": "country_code",
                      "opens": 1,
                      "proxy_excluded_opens": 1,
                      "region": "region",
                      "region_name": "region_name"
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
        let expectedResponse = ListLocationsReportsResponse(
            links: Optional([
                ListLocationsReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListLocationsReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            locations: Optional([
                ListLocationsReportsResponseLocationsItem(
                    countryCode: Optional("country_code"),
                    opens: Optional(1),
                    proxyExcludedOpens: Optional(1),
                    region: Optional("region"),
                    regionName: Optional("region_name")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reports.listLocations(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listOpenDetails1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "members": [
                    {
                      "_links": [
                        {}
                      ],
                      "campaign_id": "campaign_id",
                      "contact_status": "contact_status",
                      "email_address": "email_address",
                      "email_id": "email_id",
                      "list_id": "list_id",
                      "list_is_active": true,
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "opens": [
                        {}
                      ],
                      "opens_count": 1,
                      "proxy_excluded_opens_count": 1,
                      "vip": true
                    }
                  ],
                  "total_items": 1,
                  "total_opens": 1,
                  "total_proxy_excluded_opens": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListOpenDetailsReportsResponse(
            links: Optional([
                ListOpenDetailsReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListOpenDetailsReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            members: Optional([
                OpenActivity(
                    links: Optional([
                        OpenActivityLinksItem(

                        )
                    ]),
                    campaignId: Optional("campaign_id"),
                    contactStatus: Optional("contact_status"),
                    emailAddress: Optional("email_address"),
                    emailId: Optional("email_id"),
                    listId: Optional("list_id"),
                    listIsActive: Optional(true),
                    mergeFields: Optional([
                        "key": OpenActivityMergeFieldsValue.openActivityMergeFieldsValueAddr1(
                            OpenActivityMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    opens: Optional([
                        OpenActivityOpensItem(

                        )
                    ]),
                    opensCount: Optional(1),
                    proxyExcludedOpensCount: Optional(1),
                    vip: Optional(true)
                )
            ]),
            totalItems: Optional(1),
            totalOpens: Optional(1),
            totalProxyExcludedOpens: Optional(1)
        )
        let response = try await client.reports.listOpenDetails(
            campaignId: "campaign_id",
            since: "2016-04-12 12:00:00",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getOpenDetail1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "contact_status": "contact_status",
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "list_id": "list_id",
                  "list_is_active": true,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "opens": [
                    {
                      "is_proxy_open": true,
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "opens_count": 1,
                  "proxy_excluded_opens_count": 1,
                  "vip": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OpenActivity(
            links: Optional([
                OpenActivityLinksItem(
                    href: Optional("href"),
                    method: Optional(OpenActivityLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            contactStatus: Optional("contact_status"),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            listId: Optional("list_id"),
            listIsActive: Optional(true),
            mergeFields: Optional([
                "key": OpenActivityMergeFieldsValue.openActivityMergeFieldsValueAddr1(
                    OpenActivityMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            opens: Optional([
                OpenActivityOpensItem(
                    isProxyOpen: Optional(true),
                    timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            opensCount: Optional(1),
            proxyExcludedOpensCount: Optional(1),
            vip: Optional(true)
        )
        let response = try await client.reports.getOpenDetail(
            campaignId: "campaign_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSentTo1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "sent_to": [
                    {
                      "_links": [
                        {}
                      ],
                      "absplit_group": "a",
                      "campaign_id": "campaign_id",
                      "email_address": "email_address",
                      "email_id": "email_id",
                      "gmt_offset": 1,
                      "last_open": "2024-01-15T09:30:00Z",
                      "list_id": "list_id",
                      "list_is_active": true,
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "open_count": 1,
                      "status": "sent",
                      "vip": true
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
        let expectedResponse = ListSentToReportsResponse(
            links: Optional([
                ListSentToReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSentToReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            sentTo: Optional([
                SentTo(
                    links: Optional([
                        SentToLinksItem(

                        )
                    ]),
                    absplitGroup: Optional(SentToAbsplitGroup.a),
                    campaignId: Optional("campaign_id"),
                    emailAddress: Optional("email_address"),
                    emailId: Optional("email_id"),
                    gmtOffset: Optional(1),
                    lastOpen: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    listId: Optional("list_id"),
                    listIsActive: Optional(true),
                    mergeFields: Optional([
                        "key": SentToMergeFieldsValue.sentToMergeFieldsValueAddr1(
                            SentToMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    openCount: Optional(1),
                    status: Optional(SentToStatus.sent),
                    vip: Optional(true)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reports.listSentTo(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSentTo1() async throws -> Void {
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
                  "absplit_group": "a",
                  "campaign_id": "campaign_id",
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "gmt_offset": 1,
                  "last_open": "2024-01-15T09:30:00Z",
                  "list_id": "list_id",
                  "list_is_active": true,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "open_count": 1,
                  "status": "sent",
                  "vip": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SentTo(
            links: Optional([
                SentToLinksItem(
                    href: Optional("href"),
                    method: Optional(SentToLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            absplitGroup: Optional(SentToAbsplitGroup.a),
            campaignId: Optional("campaign_id"),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            gmtOffset: Optional(1),
            lastOpen: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            listId: Optional("list_id"),
            listIsActive: Optional(true),
            mergeFields: Optional([
                "key": SentToMergeFieldsValue.sentToMergeFieldsValueAddr1(
                    SentToMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            openCount: Optional(1),
            status: Optional(SentToStatus.sent),
            vip: Optional(true)
        )
        let response = try await client.reports.getSentTo(
            campaignId: "campaign_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSubReports1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "reports": [
                    {
                      "_links": [
                        {}
                      ],
                      "abuse_reports": 1,
                      "campaign_title": "campaign_title",
                      "ecommerce": {
                        "currency_code": "USD"
                      },
                      "emails_sent": 1,
                      "id": "id",
                      "list_id": "list_id",
                      "list_is_active": true,
                      "list_name": "list_name",
                      "preview_text": "preview_text",
                      "rss_last_send": "2024-01-15T09:30:00Z",
                      "send_time": "2024-01-15T09:30:00Z",
                      "subject_line": "subject_line",
                      "timeseries": [
                        {}
                      ],
                      "timewarp": [
                        {}
                      ],
                      "type": "type",
                      "unsubscribed": 1
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
        let expectedResponse = ListSubReportsReportsResponse(
            links: Optional([
                ListSubReportsReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSubReportsReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            reports: Optional([
                CampaignReport(
                    links: Optional([
                        CampaignReportLinksItem(

                        )
                    ]),
                    abuseReports: Optional(1),
                    campaignTitle: Optional("campaign_title"),
                    ecommerce: Optional(CampaignReportEcommerce(
                        currencyCode: Optional("USD")
                    )),
                    emailsSent: Optional(1),
                    id: Optional("id"),
                    listId: Optional("list_id"),
                    listIsActive: Optional(true),
                    listName: Optional("list_name"),
                    previewText: Optional("preview_text"),
                    rssLastSend: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    subjectLine: Optional("subject_line"),
                    timeseries: Optional([
                        CampaignReportTimeseriesItem(

                        )
                    ]),
                    timewarp: Optional([
                        CampaignReportTimewarpItem(

                        )
                    ]),
                    type: Optional("type"),
                    unsubscribed: Optional(1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reports.listSubReports(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listUnsubscribed1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "total_items": 1,
                  "unsubscribes": [
                    {
                      "_links": [
                        {}
                      ],
                      "campaign_id": "campaign_id",
                      "email_address": "email_address",
                      "email_id": "email_id",
                      "list_id": "list_id",
                      "list_is_active": true,
                      "merge_fields": {
                        "key": {
                          "addr1": "addr1",
                          "city": "city",
                          "state": "state",
                          "zip": "zip"
                        }
                      },
                      "reason": "reason",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "vip": true
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListUnsubscribedReportsResponse(
            links: Optional([
                ListUnsubscribedReportsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListUnsubscribedReportsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            totalItems: Optional(1),
            unsubscribes: Optional([
                Unsubscribes(
                    links: Optional([
                        UnsubscribesLinksItem(

                        )
                    ]),
                    campaignId: Optional("campaign_id"),
                    emailAddress: Optional("email_address"),
                    emailId: Optional("email_id"),
                    listId: Optional("list_id"),
                    listIsActive: Optional(true),
                    mergeFields: Optional([
                        "key": UnsubscribesMergeFieldsValue.unsubscribesMergeFieldsValueAddr1(
                            UnsubscribesMergeFieldsValueAddr1(
                                addr1: "addr1",
                                city: "city",
                                state: "state",
                                zip: "zip"
                            )
                        )
                    ]),
                    reason: Optional("reason"),
                    timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    vip: Optional(true)
                )
            ])
        )
        let response = try await client.reports.listUnsubscribed(
            campaignId: "campaign_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getUnsubscribed1() async throws -> Void {
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
                  "campaign_id": "campaign_id",
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "list_id": "list_id",
                  "list_is_active": true,
                  "merge_fields": {
                    "key": {
                      "addr1": "addr1",
                      "addr2": "addr2",
                      "city": "city",
                      "state": "state",
                      "zip": "zip",
                      "country": "country"
                    }
                  },
                  "reason": "reason",
                  "timestamp": "2024-01-15T09:30:00Z",
                  "vip": true
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Unsubscribes(
            links: Optional([
                UnsubscribesLinksItem(
                    href: Optional("href"),
                    method: Optional(UnsubscribesLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            campaignId: Optional("campaign_id"),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            listId: Optional("list_id"),
            listIsActive: Optional(true),
            mergeFields: Optional([
                "key": UnsubscribesMergeFieldsValue.unsubscribesMergeFieldsValueAddr1(
                    UnsubscribesMergeFieldsValueAddr1(
                        addr1: "addr1",
                        addr2: Optional("addr2"),
                        city: "city",
                        state: "state",
                        zip: "zip",
                        country: Optional("country")
                    )
                )
            ]),
            reason: Optional("reason"),
            timestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            vip: Optional(true)
        )
        let response = try await client.reports.getUnsubscribed(
            campaignId: "campaign_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}