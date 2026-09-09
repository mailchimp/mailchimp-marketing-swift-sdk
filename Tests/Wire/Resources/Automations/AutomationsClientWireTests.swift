import Foundation
import Testing
import Mailchimp

@Suite("AutomationsClient Wire Tests") struct AutomationsClientWireTests {
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
                  "automations": [
                    {
                      "_links": [
                        {}
                      ],
                      "create_time": "2024-01-15T09:30:00Z",
                      "emails_sent": 1,
                      "id": "id",
                      "recipients": {
                        "segment_opts": [
                          {
                            "value": "any",
                            "condition_type": "Aim"
                          }
                        ],
                        "store_id": "1a2df69xxx"
                      },
                      "start_time": "2024-01-15T09:30:00Z",
                      "status": "save",
                      "trigger_settings": {
                        "workflow_type": "abandonedBrowse"
                      }
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
        let expectedResponse = ListAutomationsResponse(
            links: Optional([
                ListAutomationsResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListAutomationsResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            automations: Optional([
                AutomationWorkflow(
                    links: Optional([
                        AutomationWorkflowLinksItem(

                        )
                    ]),
                    createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    emailsSent: Optional(1),
                    id: Optional("id"),
                    recipients: Optional(AutomationWorkflowRecipients(
                        segmentOpts: Optional([
                            SegmentTypeItem.aim(
                                .init(
                                    value: Optional("any"),
                                    additionalProperties: [
                                        "condition_type": JSONValue.string("Aim")
                                    ]
                                )
                            )
                        ]),
                        storeId: Optional("1a2df69xxx")
                    )),
                    startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(AutomationWorkflowStatus.save),
                    triggerSettings: Optional(AutomationWorkflowTriggerSettings(
                        workflowType: AutomationWorkflowTriggerSettingsWorkflowType.abandonedBrowse
                    ))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.automations.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "create_time": "2024-01-15T09:30:00Z",
                  "emails_sent": 1,
                  "id": "id",
                  "recipients": {
                    "list_id": "list_id",
                    "list_is_active": true,
                    "list_name": "list_name",
                    "segment_opts": [
                      {
                        "value": "any",
                        "condition_type": "Aim"
                      }
                    ],
                    "store_id": "1a2df69xxx"
                  },
                  "report_summary": {
                    "click_rate": 1.1,
                    "clicks": 1,
                    "open_rate": 1.1,
                    "opens": 1,
                    "subscriber_clicks": 1,
                    "unique_opens": 1
                  },
                  "settings": {
                    "authenticate": true,
                    "auto_footer": true,
                    "from_name": "from_name",
                    "inline_css": true,
                    "reply_to": "reply_to",
                    "title": "title",
                    "to_name": "to_name",
                    "use_conversation": true
                  },
                  "start_time": "2024-01-15T09:30:00Z",
                  "status": "save",
                  "tracking": {
                    "capsule": {
                      "notes": true
                    },
                    "clicktale": "clicktale",
                    "ecomm360": true,
                    "goal_tracking": true,
                    "google_analytics": "google_analytics",
                    "html_clicks": true,
                    "opens": true,
                    "salesforce": {
                      "campaign": true,
                      "notes": true
                    },
                    "text_clicks": true
                  },
                  "trigger_settings": {
                    "runtime": {
                      "days": [
                        "sunday"
                      ],
                      "hours": {
                        "type": "send_asap"
                      }
                    },
                    "workflow_emails_count": 1,
                    "workflow_title": "workflow_title",
                    "workflow_type": "abandonedBrowse"
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
        let expectedResponse = AutomationWorkflow(
            links: Optional([
                AutomationWorkflowLinksItem(
                    href: Optional("href"),
                    method: Optional(AutomationWorkflowLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            emailsSent: Optional(1),
            id: Optional("id"),
            recipients: Optional(AutomationWorkflowRecipients(
                listId: Optional("list_id"),
                listIsActive: Optional(true),
                listName: Optional("list_name"),
                segmentOpts: Optional([
                    SegmentTypeItem.aim(
                        .init(
                            value: Optional("any"),
                            additionalProperties: [
                                "condition_type": JSONValue.string("Aim")
                            ]
                        )
                    )
                ]),
                storeId: Optional("1a2df69xxx")
            )),
            reportSummary: Optional(AutomationWorkflowReportSummary(
                clickRate: Optional(1.1),
                clicks: Optional(1),
                openRate: Optional(1.1),
                opens: Optional(1),
                subscriberClicks: Optional(1),
                uniqueOpens: Optional(1)
            )),
            settings: Optional(AutomationWorkflowSettings(
                authenticate: Optional(true),
                autoFooter: Optional(true),
                fromName: Optional("from_name"),
                inlineCss: Optional(true),
                replyTo: Optional("reply_to"),
                title: Optional("title"),
                toName: Optional("to_name"),
                useConversation: Optional(true)
            )),
            startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(AutomationWorkflowStatus.save),
            tracking: Optional(AutomationWorkflowTracking(
                capsule: Optional(AutomationWorkflowTrackingCapsule(
                    notes: Optional(true)
                )),
                clicktale: Optional("clicktale"),
                ecomm360: Optional(true),
                goalTracking: Optional(true),
                googleAnalytics: Optional("google_analytics"),
                htmlClicks: Optional(true),
                opens: Optional(true),
                salesforce: Optional(AutomationWorkflowTrackingSalesforce(
                    campaign: Optional(true),
                    notes: Optional(true)
                )),
                textClicks: Optional(true)
            )),
            triggerSettings: Optional(AutomationWorkflowTriggerSettings(
                runtime: Optional(AutomationWorkflowTriggerSettingsRuntime(
                    days: Optional([
                        AutomationWorkflowTriggerSettingsRuntimeDaysItem.sunday
                    ]),
                    hours: Optional(AutomationWorkflowTriggerSettingsRuntimeHours(
                        type: AutomationWorkflowTriggerSettingsRuntimeHoursType.sendAsap
                    ))
                )),
                workflowEmailsCount: Optional(1),
                workflowTitle: Optional("workflow_title"),
                workflowType: AutomationWorkflowTriggerSettingsWorkflowType.abandonedBrowse
            ))
        )
        let response = try await client.automations.create(
            request: .init(
                recipients: CreateAutomationsRequestRecipients(

                ),
                triggerSettings: CreateAutomationsRequestTriggerSettings(
                    workflowType: .abandonedBrowse
                )
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
                  "create_time": "2024-01-15T09:30:00Z",
                  "emails_sent": 1,
                  "id": "id",
                  "recipients": {
                    "list_id": "list_id",
                    "list_is_active": true,
                    "list_name": "list_name",
                    "segment_opts": [
                      {
                        "value": "any",
                        "condition_type": "Aim"
                      }
                    ],
                    "store_id": "1a2df69xxx"
                  },
                  "report_summary": {
                    "click_rate": 1.1,
                    "clicks": 1,
                    "open_rate": 1.1,
                    "opens": 1,
                    "subscriber_clicks": 1,
                    "unique_opens": 1
                  },
                  "settings": {
                    "authenticate": true,
                    "auto_footer": true,
                    "from_name": "from_name",
                    "inline_css": true,
                    "reply_to": "reply_to",
                    "title": "title",
                    "to_name": "to_name",
                    "use_conversation": true
                  },
                  "start_time": "2024-01-15T09:30:00Z",
                  "status": "save",
                  "tracking": {
                    "capsule": {
                      "notes": true
                    },
                    "clicktale": "clicktale",
                    "ecomm360": true,
                    "goal_tracking": true,
                    "google_analytics": "google_analytics",
                    "html_clicks": true,
                    "opens": true,
                    "salesforce": {
                      "campaign": true,
                      "notes": true
                    },
                    "text_clicks": true
                  },
                  "trigger_settings": {
                    "runtime": {
                      "days": [
                        "sunday"
                      ],
                      "hours": {
                        "type": "send_asap"
                      }
                    },
                    "workflow_emails_count": 1,
                    "workflow_title": "workflow_title",
                    "workflow_type": "abandonedBrowse"
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
        let expectedResponse = AutomationWorkflow(
            links: Optional([
                AutomationWorkflowLinksItem(
                    href: Optional("href"),
                    method: Optional(AutomationWorkflowLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            emailsSent: Optional(1),
            id: Optional("id"),
            recipients: Optional(AutomationWorkflowRecipients(
                listId: Optional("list_id"),
                listIsActive: Optional(true),
                listName: Optional("list_name"),
                segmentOpts: Optional([
                    SegmentTypeItem.aim(
                        .init(
                            value: Optional("any"),
                            additionalProperties: [
                                "condition_type": JSONValue.string("Aim")
                            ]
                        )
                    )
                ]),
                storeId: Optional("1a2df69xxx")
            )),
            reportSummary: Optional(AutomationWorkflowReportSummary(
                clickRate: Optional(1.1),
                clicks: Optional(1),
                openRate: Optional(1.1),
                opens: Optional(1),
                subscriberClicks: Optional(1),
                uniqueOpens: Optional(1)
            )),
            settings: Optional(AutomationWorkflowSettings(
                authenticate: Optional(true),
                autoFooter: Optional(true),
                fromName: Optional("from_name"),
                inlineCss: Optional(true),
                replyTo: Optional("reply_to"),
                title: Optional("title"),
                toName: Optional("to_name"),
                useConversation: Optional(true)
            )),
            startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(AutomationWorkflowStatus.save),
            tracking: Optional(AutomationWorkflowTracking(
                capsule: Optional(AutomationWorkflowTrackingCapsule(
                    notes: Optional(true)
                )),
                clicktale: Optional("clicktale"),
                ecomm360: Optional(true),
                goalTracking: Optional(true),
                googleAnalytics: Optional("google_analytics"),
                htmlClicks: Optional(true),
                opens: Optional(true),
                salesforce: Optional(AutomationWorkflowTrackingSalesforce(
                    campaign: Optional(true),
                    notes: Optional(true)
                )),
                textClicks: Optional(true)
            )),
            triggerSettings: Optional(AutomationWorkflowTriggerSettings(
                runtime: Optional(AutomationWorkflowTriggerSettingsRuntime(
                    days: Optional([
                        AutomationWorkflowTriggerSettingsRuntimeDaysItem.sunday
                    ]),
                    hours: Optional(AutomationWorkflowTriggerSettingsRuntimeHours(
                        type: AutomationWorkflowTriggerSettingsRuntimeHoursType.sendAsap
                    ))
                )),
                workflowEmailsCount: Optional(1),
                workflowTitle: Optional("workflow_title"),
                workflowType: AutomationWorkflowTriggerSettingsWorkflowType.abandonedBrowse
            ))
        )
        let response = try await client.automations.get(
            workflowId: "workflow_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listEmails1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    [
                      {}
                    ]
                  ],
                  "emails": [
                    {
                      "_links": [
                        {}
                      ],
                      "archive_url": "archive_url",
                      "content_type": "content_type",
                      "create_time": "2024-01-15T09:30:00Z",
                      "delay": {
                        "action_description": "subscribers purchase anything from your store",
                        "full_description": "1 day after subscribers purchase anything from your store"
                      },
                      "emails_sent": 1,
                      "has_logo_merge_tag": true,
                      "id": "id",
                      "needs_block_refresh": true,
                      "position": 1,
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
                      },
                      "send_time": "2024-01-15T09:30:00Z",
                      "start_time": "2024-01-15T09:30:00Z",
                      "status": "save",
                      "trigger_settings": {
                        "workflow_type": "abandonedBrowse"
                      },
                      "web_id": 33345484,
                      "workflow_id": "workflow_id"
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
        let expectedResponse = ListEmailsAutomationsResponse(
            links: Optional([
                [
                    ListEmailsAutomationsResponseLinksItemItem(

                    )
                ]
            ]),
            emails: Optional([
                AutomationWorkflowEmail(
                    links: Optional([
                        AutomationWorkflowEmailLinksItem(

                        )
                    ]),
                    archiveUrl: Optional("archive_url"),
                    contentType: Optional("content_type"),
                    createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    delay: Optional(AutomationWorkflowEmailDelay(
                        actionDescription: Optional("subscribers purchase anything from your store"),
                        fullDescription: Optional("1 day after subscribers purchase anything from your store")
                    )),
                    emailsSent: Optional(1),
                    hasLogoMergeTag: Optional(true),
                    id: Optional("id"),
                    needsBlockRefresh: Optional(true),
                    position: Optional(1),
                    recipients: Optional(AutomationWorkflowEmailRecipients(
                        segmentOpts: Optional(AutomationWorkflowEmailRecipientsSegmentOpts(
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
                    )),
                    sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(AutomationWorkflowEmailStatus.save),
                    triggerSettings: Optional(AutomationWorkflowEmailTriggerSettings(
                        workflowType: AutomationWorkflowEmailTriggerSettingsWorkflowType.abandonedBrowse
                    )),
                    webId: Optional(33345484),
                    workflowId: Optional("workflow_id")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.automations.listEmails(
            workflowId: "workflow_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getEmail1() async throws -> Void {
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
                  "archive_url": "archive_url",
                  "content_type": "content_type",
                  "create_time": "2024-01-15T09:30:00Z",
                  "delay": {
                    "action": "previous_campaign_sent",
                    "action_description": "subscribers purchase anything from your store",
                    "amount": 1,
                    "direction": "before",
                    "full_description": "1 day after subscribers purchase anything from your store",
                    "type": "now"
                  },
                  "emails_sent": 1,
                  "has_logo_merge_tag": true,
                  "id": "id",
                  "needs_block_refresh": true,
                  "position": 1,
                  "recipients": {
                    "list_id": "list_id",
                    "list_is_active": true,
                    "list_name": "list_name",
                    "recipient_count": 1,
                    "segment_opts": {
                      "conditions": [
                        {
                          "value": "any",
                          "condition_type": "Aim"
                        }
                      ],
                      "match": "any",
                      "prebuilt_segment_id": "subscribers-female",
                      "saved_segment_id": 1
                    },
                    "segment_text": "segment_text"
                  },
                  "report_summary": {
                    "click_rate": 1.1,
                    "clicks": 1,
                    "open_rate": 1.1,
                    "opens": 1,
                    "subscriber_clicks": 1,
                    "unique_opens": 1
                  },
                  "send_time": "2024-01-15T09:30:00Z",
                  "settings": {
                    "authenticate": true,
                    "auto_fb_post": [
                      "auto_fb_post"
                    ],
                    "auto_footer": true,
                    "auto_tweet": true,
                    "drag_and_drop": true,
                    "fb_comments": true,
                    "from_name": "from_name",
                    "inline_css": true,
                    "preview_text": "preview_text",
                    "reply_to": "reply_to",
                    "subject_line": "subject_line",
                    "template_id": 1,
                    "title": "title"
                  },
                  "social_card": {
                    "description": "description",
                    "image_url": "image_url",
                    "title": "title"
                  },
                  "start_time": "2024-01-15T09:30:00Z",
                  "status": "save",
                  "tracking": {
                    "capsule": {
                      "notes": true
                    },
                    "clicktale": "clicktale",
                    "ecomm360": true,
                    "goal_tracking": true,
                    "google_analytics": "google_analytics",
                    "html_clicks": true,
                    "opens": true,
                    "salesforce": {
                      "campaign": true,
                      "notes": true
                    },
                    "text_clicks": true
                  },
                  "trigger_settings": {
                    "runtime": {
                      "days": [
                        "sunday"
                      ],
                      "hours": {
                        "type": "send_asap"
                      }
                    },
                    "workflow_emails_count": 1,
                    "workflow_title": "workflow_title",
                    "workflow_type": "abandonedBrowse"
                  },
                  "web_id": 33345484,
                  "workflow_id": "workflow_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AutomationWorkflowEmail(
            links: Optional([
                AutomationWorkflowEmailLinksItem(
                    href: Optional("href"),
                    method: Optional(AutomationWorkflowEmailLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            archiveUrl: Optional("archive_url"),
            contentType: Optional("content_type"),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            delay: Optional(AutomationWorkflowEmailDelay(
                action: Optional(AutomationWorkflowEmailDelayAction.previousCampaignSent),
                actionDescription: Optional("subscribers purchase anything from your store"),
                amount: Optional(1),
                direction: Optional(AutomationWorkflowEmailDelayDirection.before),
                fullDescription: Optional("1 day after subscribers purchase anything from your store"),
                type: Optional(AutomationWorkflowEmailDelayType.now)
            )),
            emailsSent: Optional(1),
            hasLogoMergeTag: Optional(true),
            id: Optional("id"),
            needsBlockRefresh: Optional(true),
            position: Optional(1),
            recipients: Optional(AutomationWorkflowEmailRecipients(
                listId: Optional("list_id"),
                listIsActive: Optional(true),
                listName: Optional("list_name"),
                recipientCount: Optional(1),
                segmentOpts: Optional(AutomationWorkflowEmailRecipientsSegmentOpts(
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
                    match: Optional(AutomationWorkflowEmailRecipientsSegmentOptsMatch.any),
                    prebuiltSegmentId: Optional("subscribers-female"),
                    savedSegmentId: Optional(AutomationWorkflowEmailRecipientsSegmentOptsSavedSegmentId.int(
                        1
                    ))
                )),
                segmentText: Optional("segment_text")
            )),
            reportSummary: Optional(AutomationWorkflowEmailReportSummary(
                clickRate: Optional(1.1),
                clicks: Optional(1),
                openRate: Optional(1.1),
                opens: Optional(1),
                subscriberClicks: Optional(1),
                uniqueOpens: Optional(1)
            )),
            sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            settings: Optional(AutomationWorkflowEmailSettings(
                authenticate: Optional(true),
                autoFbPost: Optional([
                    "auto_fb_post"
                ]),
                autoFooter: Optional(true),
                autoTweet: Optional(true),
                dragAndDrop: Optional(true),
                fbComments: Optional(true),
                fromName: Optional("from_name"),
                inlineCss: Optional(true),
                previewText: Optional("preview_text"),
                replyTo: Optional("reply_to"),
                subjectLine: Optional("subject_line"),
                templateId: Optional(1),
                title: Optional("title")
            )),
            socialCard: Optional(AutomationWorkflowEmailSocialCard(
                description: Optional("description"),
                imageUrl: Optional("image_url"),
                title: Optional("title")
            )),
            startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(AutomationWorkflowEmailStatus.save),
            tracking: Optional(AutomationWorkflowEmailTracking(
                capsule: Optional(AutomationWorkflowEmailTrackingCapsule(
                    notes: Optional(true)
                )),
                clicktale: Optional("clicktale"),
                ecomm360: Optional(true),
                goalTracking: Optional(true),
                googleAnalytics: Optional("google_analytics"),
                htmlClicks: Optional(true),
                opens: Optional(true),
                salesforce: Optional(AutomationWorkflowEmailTrackingSalesforce(
                    campaign: Optional(true),
                    notes: Optional(true)
                )),
                textClicks: Optional(true)
            )),
            triggerSettings: Optional(AutomationWorkflowEmailTriggerSettings(
                runtime: Optional(AutomationWorkflowEmailTriggerSettingsRuntime(
                    days: Optional([
                        AutomationWorkflowEmailTriggerSettingsRuntimeDaysItem.sunday
                    ]),
                    hours: Optional(AutomationWorkflowEmailTriggerSettingsRuntimeHours(
                        type: AutomationWorkflowEmailTriggerSettingsRuntimeHoursType.sendAsap
                    ))
                )),
                workflowEmailsCount: Optional(1),
                workflowTitle: Optional("workflow_title"),
                workflowType: AutomationWorkflowEmailTriggerSettingsWorkflowType.abandonedBrowse
            )),
            webId: Optional(33345484),
            workflowId: Optional("workflow_id")
        )
        let response = try await client.automations.getEmail(
            workflowId: "workflow_id",
            workflowEmailId: "workflow_email_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateEmail1() async throws -> Void {
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
                  "archive_url": "archive_url",
                  "content_type": "content_type",
                  "create_time": "2024-01-15T09:30:00Z",
                  "delay": {
                    "action": "previous_campaign_sent",
                    "action_description": "subscribers purchase anything from your store",
                    "amount": 1,
                    "direction": "before",
                    "full_description": "1 day after subscribers purchase anything from your store",
                    "type": "now"
                  },
                  "emails_sent": 1,
                  "has_logo_merge_tag": true,
                  "id": "id",
                  "needs_block_refresh": true,
                  "position": 1,
                  "recipients": {
                    "list_id": "list_id",
                    "list_is_active": true,
                    "list_name": "list_name",
                    "recipient_count": 1,
                    "segment_opts": {
                      "conditions": [
                        {
                          "value": "any",
                          "condition_type": "Aim"
                        }
                      ],
                      "match": "any",
                      "prebuilt_segment_id": "subscribers-female",
                      "saved_segment_id": 1
                    },
                    "segment_text": "segment_text"
                  },
                  "report_summary": {
                    "click_rate": 1.1,
                    "clicks": 1,
                    "open_rate": 1.1,
                    "opens": 1,
                    "subscriber_clicks": 1,
                    "unique_opens": 1
                  },
                  "send_time": "2024-01-15T09:30:00Z",
                  "settings": {
                    "authenticate": true,
                    "auto_fb_post": [
                      "auto_fb_post"
                    ],
                    "auto_footer": true,
                    "auto_tweet": true,
                    "drag_and_drop": true,
                    "fb_comments": true,
                    "from_name": "from_name",
                    "inline_css": true,
                    "preview_text": "preview_text",
                    "reply_to": "reply_to",
                    "subject_line": "subject_line",
                    "template_id": 1,
                    "title": "title"
                  },
                  "social_card": {
                    "description": "description",
                    "image_url": "image_url",
                    "title": "title"
                  },
                  "start_time": "2024-01-15T09:30:00Z",
                  "status": "save",
                  "tracking": {
                    "capsule": {
                      "notes": true
                    },
                    "clicktale": "clicktale",
                    "ecomm360": true,
                    "goal_tracking": true,
                    "google_analytics": "google_analytics",
                    "html_clicks": true,
                    "opens": true,
                    "salesforce": {
                      "campaign": true,
                      "notes": true
                    },
                    "text_clicks": true
                  },
                  "trigger_settings": {
                    "runtime": {
                      "days": [
                        "sunday"
                      ],
                      "hours": {
                        "type": "send_asap"
                      }
                    },
                    "workflow_emails_count": 1,
                    "workflow_title": "workflow_title",
                    "workflow_type": "abandonedBrowse"
                  },
                  "web_id": 33345484,
                  "workflow_id": "workflow_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AutomationWorkflowEmail(
            links: Optional([
                AutomationWorkflowEmailLinksItem(
                    href: Optional("href"),
                    method: Optional(AutomationWorkflowEmailLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            archiveUrl: Optional("archive_url"),
            contentType: Optional("content_type"),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            delay: Optional(AutomationWorkflowEmailDelay(
                action: Optional(AutomationWorkflowEmailDelayAction.previousCampaignSent),
                actionDescription: Optional("subscribers purchase anything from your store"),
                amount: Optional(1),
                direction: Optional(AutomationWorkflowEmailDelayDirection.before),
                fullDescription: Optional("1 day after subscribers purchase anything from your store"),
                type: Optional(AutomationWorkflowEmailDelayType.now)
            )),
            emailsSent: Optional(1),
            hasLogoMergeTag: Optional(true),
            id: Optional("id"),
            needsBlockRefresh: Optional(true),
            position: Optional(1),
            recipients: Optional(AutomationWorkflowEmailRecipients(
                listId: Optional("list_id"),
                listIsActive: Optional(true),
                listName: Optional("list_name"),
                recipientCount: Optional(1),
                segmentOpts: Optional(AutomationWorkflowEmailRecipientsSegmentOpts(
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
                    match: Optional(AutomationWorkflowEmailRecipientsSegmentOptsMatch.any),
                    prebuiltSegmentId: Optional("subscribers-female"),
                    savedSegmentId: Optional(AutomationWorkflowEmailRecipientsSegmentOptsSavedSegmentId.int(
                        1
                    ))
                )),
                segmentText: Optional("segment_text")
            )),
            reportSummary: Optional(AutomationWorkflowEmailReportSummary(
                clickRate: Optional(1.1),
                clicks: Optional(1),
                openRate: Optional(1.1),
                opens: Optional(1),
                subscriberClicks: Optional(1),
                uniqueOpens: Optional(1)
            )),
            sendTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            settings: Optional(AutomationWorkflowEmailSettings(
                authenticate: Optional(true),
                autoFbPost: Optional([
                    "auto_fb_post"
                ]),
                autoFooter: Optional(true),
                autoTweet: Optional(true),
                dragAndDrop: Optional(true),
                fbComments: Optional(true),
                fromName: Optional("from_name"),
                inlineCss: Optional(true),
                previewText: Optional("preview_text"),
                replyTo: Optional("reply_to"),
                subjectLine: Optional("subject_line"),
                templateId: Optional(1),
                title: Optional("title")
            )),
            socialCard: Optional(AutomationWorkflowEmailSocialCard(
                description: Optional("description"),
                imageUrl: Optional("image_url"),
                title: Optional("title")
            )),
            startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(AutomationWorkflowEmailStatus.save),
            tracking: Optional(AutomationWorkflowEmailTracking(
                capsule: Optional(AutomationWorkflowEmailTrackingCapsule(
                    notes: Optional(true)
                )),
                clicktale: Optional("clicktale"),
                ecomm360: Optional(true),
                goalTracking: Optional(true),
                googleAnalytics: Optional("google_analytics"),
                htmlClicks: Optional(true),
                opens: Optional(true),
                salesforce: Optional(AutomationWorkflowEmailTrackingSalesforce(
                    campaign: Optional(true),
                    notes: Optional(true)
                )),
                textClicks: Optional(true)
            )),
            triggerSettings: Optional(AutomationWorkflowEmailTriggerSettings(
                runtime: Optional(AutomationWorkflowEmailTriggerSettingsRuntime(
                    days: Optional([
                        AutomationWorkflowEmailTriggerSettingsRuntimeDaysItem.sunday
                    ]),
                    hours: Optional(AutomationWorkflowEmailTriggerSettingsRuntimeHours(
                        type: AutomationWorkflowEmailTriggerSettingsRuntimeHoursType.sendAsap
                    ))
                )),
                workflowEmailsCount: Optional(1),
                workflowTitle: Optional("workflow_title"),
                workflowType: AutomationWorkflowEmailTriggerSettingsWorkflowType.abandonedBrowse
            )),
            webId: Optional(33345484),
            workflowId: Optional("workflow_id")
        )
        let response = try await client.automations.updateEmail(
            workflowId: "workflow_id",
            workflowEmailId: "workflow_email_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listEmailQueue1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    [
                      {}
                    ]
                  ],
                  "email_id": "email_id",
                  "queue": [
                    {
                      "_links": [
                        [
                          {}
                        ]
                      ],
                      "email_address": "email_address",
                      "email_id": "email_id",
                      "id": "id",
                      "list_id": "list_id",
                      "next_send": "2024-01-15T09:30:00Z",
                      "workflow_id": "workflow_id"
                    }
                  ],
                  "total_items": 1,
                  "workflow_id": "workflow_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListEmailQueueAutomationsResponse(
            links: Optional([
                [
                    ListEmailQueueAutomationsResponseLinksItemItem(

                    )
                ]
            ]),
            emailId: Optional("email_id"),
            queue: Optional([
                ListEmailQueueAutomationsResponseQueueItem(
                    links: Optional([
                        [
                            ListEmailQueueAutomationsResponseQueueItemLinksItemItem(

                            )
                        ]
                    ]),
                    emailAddress: "email_address",
                    emailId: Optional("email_id"),
                    id: Optional("id"),
                    listId: Optional("list_id"),
                    nextSend: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    workflowId: Optional("workflow_id")
                )
            ]),
            totalItems: Optional(1),
            workflowId: Optional("workflow_id")
        )
        let response = try await client.automations.listEmailQueue(
            workflowId: "workflow_id",
            workflowEmailId: "workflow_email_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createEmailQueue1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    [
                      {}
                    ]
                  ],
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "id": "id",
                  "list_id": "list_id",
                  "list_is_active": true,
                  "next_send": "2024-01-15T09:30:00Z",
                  "workflow_id": "workflow_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriberInAutomationQueue(
            links: Optional([
                [
                    SubscriberInAutomationQueueLinksItemItem(

                    )
                ]
            ]),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            id: Optional("id"),
            listId: Optional("list_id"),
            listIsActive: Optional(true),
            nextSend: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            workflowId: Optional("workflow_id")
        )
        let response = try await client.automations.createEmailQueue(
            workflowId: "workflow_id",
            workflowEmailId: "workflow_email_id",
            request: .init(emailAddress: "email_address"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getEmailQueue1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    [
                      {}
                    ]
                  ],
                  "email_address": "email_address",
                  "email_id": "email_id",
                  "id": "id",
                  "list_id": "list_id",
                  "list_is_active": true,
                  "next_send": "2024-01-15T09:30:00Z",
                  "workflow_id": "workflow_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriberInAutomationQueue(
            links: Optional([
                [
                    SubscriberInAutomationQueueLinksItemItem(

                    )
                ]
            ]),
            emailAddress: Optional("email_address"),
            emailId: Optional("email_id"),
            id: Optional("id"),
            listId: Optional("list_id"),
            listIsActive: Optional(true),
            nextSend: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            workflowId: Optional("workflow_id")
        )
        let response = try await client.automations.getEmailQueue(
            workflowId: "workflow_id",
            workflowEmailId: "workflow_email_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listRemovedSubscribers1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    [
                      {}
                    ]
                  ],
                  "subscribers": [
                    {
                      "_links": [
                        [
                          {}
                        ]
                      ],
                      "email_address": "email_address",
                      "id": "id",
                      "list_id": "list_id",
                      "workflow_id": "workflow_id"
                    }
                  ],
                  "total_items": 1,
                  "workflow_id": "workflow_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListRemovedSubscribersAutomationsResponse(
            links: Optional([
                [
                    ListRemovedSubscribersAutomationsResponseLinksItemItem(

                    )
                ]
            ]),
            subscribers: Optional([
                SubscriberRemovedFromAutomationWorkflow(
                    links: Optional([
                        [
                            SubscriberRemovedFromAutomationWorkflowLinksItemItem(

                            )
                        ]
                    ]),
                    emailAddress: Optional("email_address"),
                    id: Optional("id"),
                    listId: Optional("list_id"),
                    workflowId: Optional("workflow_id")
                )
            ]),
            totalItems: Optional(1),
            workflowId: Optional("workflow_id")
        )
        let response = try await client.automations.listRemovedSubscribers(
            workflowId: "workflow_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createRemovedSubscriber1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    [
                      {}
                    ]
                  ],
                  "email_address": "email_address",
                  "id": "id",
                  "list_id": "list_id",
                  "workflow_id": "workflow_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriberRemovedFromAutomationWorkflow(
            links: Optional([
                [
                    SubscriberRemovedFromAutomationWorkflowLinksItemItem(

                    )
                ]
            ]),
            emailAddress: Optional("email_address"),
            id: Optional("id"),
            listId: Optional("list_id"),
            workflowId: Optional("workflow_id")
        )
        let response = try await client.automations.createRemovedSubscriber(
            workflowId: "workflow_id",
            request: .init(emailAddress: "email_address"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getRemovedSubscriber1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    [
                      {}
                    ]
                  ],
                  "email_address": "email_address",
                  "id": "id",
                  "list_id": "list_id",
                  "workflow_id": "workflow_id"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriberRemovedFromAutomationWorkflow(
            links: Optional([
                [
                    SubscriberRemovedFromAutomationWorkflowLinksItemItem(

                    )
                ]
            ]),
            emailAddress: Optional("email_address"),
            id: Optional("id"),
            listId: Optional("list_id"),
            workflowId: Optional("workflow_id")
        )
        let response = try await client.automations.getRemovedSubscriber(
            workflowId: "workflow_id",
            subscriberHash: "subscriber_hash",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}