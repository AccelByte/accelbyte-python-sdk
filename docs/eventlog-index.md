# justice-event-log-service Index


## Operations

### Event
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /event/namespaces/{namespace}/eventId/{eventId} | GET | GetEventByEventIDHandler | [GetEventByEventIDHandler](../accelbyte_py_sdk/api/eventlog/operations/event/get_event_by_event_id_handler.py) | [get_event_by_event_id_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |
| /event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId} | GET | GetEventByEventTypeAndEventIDHandler | [GetEventByEventTypeAndEventIDHandler](../accelbyte_py_sdk/api/eventlog/operations/event/get_event_by_event_type_and_event_id_handler.py) | [get_event_by_event_type_and_event_id_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |
| /event/namespaces/{namespace}/eventType/{eventType} | GET | GetEventByEventTypeHandler | [GetEventByEventTypeHandler](../accelbyte_py_sdk/api/eventlog/operations/event/get_event_by_event_type_handler.py) | [get_event_by_event_type_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |
| /event/namespaces/{namespace} | GET | GetEventByNamespaceHandler | [GetEventByNamespaceHandler](../accelbyte_py_sdk/api/eventlog/operations/event/get_event_by_namespace_handler.py) | [get_event_by_namespace_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |
| /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId} | GET | GetEventByUserEventIDAndEventTypeHandler | [GetEventByUserEventIDAndEventTypeHandler](../accelbyte_py_sdk/api/eventlog/operations/event/get_event_by_user_event_id_and_event_type_handler.py) | [get_event_by_user_event_id_and_event_type_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |
| /event/namespaces/{namespace}/users/{userId}/eventId/{eventId} | GET | GetEventByUserIDAndEventIDHandler | [GetEventByUserIDAndEventIDHandler](../accelbyte_py_sdk/api/eventlog/operations/event/get_event_by_user_id_and_event_id_handler.py) | [get_event_by_user_id_and_event_id_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |
| /event/namespaces/{namespace}/users/{userId}/eventType/{eventType} | GET | GetEventByUserIDAndEventTypeHandler | [GetEventByUserIDAndEventTypeHandler](../accelbyte_py_sdk/api/eventlog/operations/event/get_event_by_user_id_and_event_type_handler.py) | [get_event_by_user_id_and_event_type_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |
| /event/namespaces/{namespace}/users/{userId} | GET | GetEventByUserIDHandler | [GetEventByUserIDHandler](../accelbyte_py_sdk/api/eventlog/operations/event/get_event_by_user_id_handler.py) | [get_event_by_user_id_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |
| /event/namespaces/{namespace} | POST | PostEventHandler | [PostEventHandler](../accelbyte_py_sdk/api/eventlog/operations/event/post_event_handler.py) | [post_event_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event.py) |

### Event Descriptions
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /event/descriptions/agentType | GET | AgentTypeDescriptionHandler | [AgentTypeDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/agent_type_description_handler.py) | [agent_type_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/eventId | GET | EventIDDescriptionHandler | [EventIDDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/event_id_description_handler.py) | [event_id_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/eventLevel | GET | EventLevelDescriptionHandler | [EventLevelDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/event_level_description_handler.py) | [event_level_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/eventType | GET | EventTypeDescriptionHandler | [EventTypeDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/event_type_description_handler.py) | [event_type_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/agentType/listByAgentTypes | GET | SpecificAgentTypeDescriptionHandler | [SpecificAgentTypeDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/specific_agent_type_description_handler.py) | [specific_agent_type_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/eventId/listByEventIds | GET | SpecificEventIDDescriptionHandler | [SpecificEventIDDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/specific_event_id_description_handler.py) | [specific_event_id_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/eventLevel/listByEventLevels | GET | SpecificEventLevelDescriptionHandler | [SpecificEventLevelDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/specific_event_level_description_handler.py) | [specific_event_level_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/eventType/listByEventTypes | GET | SpecificEventTypeDescriptionHandler | [SpecificEventTypeDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/specific_event_type_description_handler.py) | [specific_event_type_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/ux/listByUx | GET | SpecificUXDescriptionHandler | [SpecificUXDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/specific_ux_description_handler.py) | [specific_ux_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |
| /event/descriptions/ux | GET | UXNameDescriptionHandler | [UXNameDescriptionHandler](../accelbyte_py_sdk/api/eventlog/operations/event_descriptions/ux_name_description_handler.py) | [ux_name_description_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_descriptions.py) |

### Event Registry
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /event/registry/eventIds/{eventId} | GET | GetRegisteredEventIDHandler | [GetRegisteredEventIDHandler](../accelbyte_py_sdk/api/eventlog/operations/event_registry/get_registered_event_id_handler.py) | [get_registered_event_id_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_registry.py) |
| /event/registry/eventTypes/{eventType} | GET | GetRegisteredEventsByEventTypeHandler | [GetRegisteredEventsByEventTypeHandler](../accelbyte_py_sdk/api/eventlog/operations/event_registry/get_registered_events_by_event_type_handler.py) | [get_registered_events_by_event_type_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_registry.py) |
| /event/registry/eventIds | GET | GetRegisteredEventsHandler | [GetRegisteredEventsHandler](../accelbyte_py_sdk/api/eventlog/operations/event_registry/get_registered_events_handler.py) | [get_registered_events_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_registry.py) |
| /event/registry/eventIds | POST | RegisterEventHandler | [RegisterEventHandler](../accelbyte_py_sdk/api/eventlog/operations/event_registry/register_event_handler.py) | [register_event_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_registry.py) |
| /event/registry/eventIds/{eventId} | DELETE | UnregisterEventIDHandler | [UnregisterEventIDHandler](../accelbyte_py_sdk/api/eventlog/operations/event_registry/unregister_event_id_handler.py) | [unregister_event_id_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_registry.py) |
| /event/registry/eventIds/{eventId} | POST | UpdateEventRegistryHandler | [UpdateEventRegistryHandler](../accelbyte_py_sdk/api/eventlog/operations/event_registry/update_event_registry_handler.py) | [update_event_registry_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_registry.py) |

### Event V2
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /event/v2/admin/namespaces/{namespace}/users/{userId}/event | GET | GetEventSpecificUserV2Handler | [GetEventSpecificUserV2Handler](../accelbyte_py_sdk/api/eventlog/operations/event_v2/get_event_specific_user_v2_handler.py) | [get_event_specific_user_v2_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_v2.py) |
| /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory | GET | GetPublicEditHistory | [GetPublicEditHistory](../accelbyte_py_sdk/api/eventlog/operations/event_v2/get_public_edit_history.py) | [get_public_edit_history](../accelbyte_py_sdk/api/eventlog/wrappers/_event_v2.py) |
| /event/v2/public/namespaces/{namespace}/users/{userId}/event | GET | GetUserEventsV2Public | [GetUserEventsV2Public](../accelbyte_py_sdk/api/eventlog/operations/event_v2/get_user_events_v2_public.py) | [get_user_events_v2_public](../accelbyte_py_sdk/api/eventlog/wrappers/_event_v2.py) |
| /event/v2/admin/namespaces/{namespace}/query | POST | QueryEventStreamHandler | [QueryEventStreamHandler](../accelbyte_py_sdk/api/eventlog/operations/event_v2/query_event_stream_handler.py) | [query_event_stream_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_event_v2.py) |

### User Information
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /event/namespaces/{namespace}/users/{userId}/activities | DELETE | DeleteUserActivitiesHandler | [DeleteUserActivitiesHandler](../accelbyte_py_sdk/api/eventlog/operations/user_information/delete_user_activities_handler.py) | [delete_user_activities_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_user_information.py) |
| /event/namespaces/{namespace}/users/{userId}/activities | GET | GetUserActivitiesHandler | [GetUserActivitiesHandler](../accelbyte_py_sdk/api/eventlog/operations/user_information/get_user_activities_handler.py) | [get_user_activities_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_user_information.py) |
| /event/namespaces/{namespace}/users/{userId}/lastActivityTime | GET | LastUserActivityTimeHandler | [LastUserActivityTimeHandler](../accelbyte_py_sdk/api/eventlog/operations/user_information/last_user_activity_time_handler.py) | [last_user_activity_time_handler](../accelbyte_py_sdk/api/eventlog/wrappers/_user_information.py) |


## Models
| Model | Class |
|---|---|
| models.AgentType | [ModelsAgentType](../accelbyte_py_sdk/api/eventlog/models/models_agent_type.py) |
| models.Event | [ModelsEvent](../accelbyte_py_sdk/api/eventlog/models/models_event.py) |
| models.EventID | [ModelsEventID](../accelbyte_py_sdk/api/eventlog/models/models_event_id.py) |
| models.EventLevel | [ModelsEventLevel](../accelbyte_py_sdk/api/eventlog/models/models_event_level.py) |
| models.EventRegistry | [ModelsEventRegistry](../accelbyte_py_sdk/api/eventlog/models/models_event_registry.py) |
| models.EventResponse | [ModelsEventResponse](../accelbyte_py_sdk/api/eventlog/models/models_event_response.py) |
| models.EventResponseV2 | [ModelsEventResponseV2](../accelbyte_py_sdk/api/eventlog/models/models_event_response_v2.py) |
| models.EventType | [ModelsEventType](../accelbyte_py_sdk/api/eventlog/models/models_event_type.py) |
| models.EventV2 | [ModelsEventV2](../accelbyte_py_sdk/api/eventlog/models/models_event_v2.py) |
| models.GenericQueryPayload | [ModelsGenericQueryPayload](../accelbyte_py_sdk/api/eventlog/models/models_generic_query_payload.py) |
| models.MultipleAgentType | [ModelsMultipleAgentType](../accelbyte_py_sdk/api/eventlog/models/models_multiple_agent_type.py) |
| models.MultipleEventID | [ModelsMultipleEventID](../accelbyte_py_sdk/api/eventlog/models/models_multiple_event_id.py) |
| models.MultipleEventLevel | [ModelsMultipleEventLevel](../accelbyte_py_sdk/api/eventlog/models/models_multiple_event_level.py) |
| models.MultipleEventType | [ModelsMultipleEventType](../accelbyte_py_sdk/api/eventlog/models/models_multiple_event_type.py) |
| models.MultipleUX | [ModelsMultipleUX](../accelbyte_py_sdk/api/eventlog/models/models_multiple_ux.py) |
| models.Pagination | [ModelsPagination](../accelbyte_py_sdk/api/eventlog/models/models_pagination.py) |
| models.Paging | [ModelsPaging](../accelbyte_py_sdk/api/eventlog/models/models_paging.py) |
| models.UserLastActivity | [ModelsUserLastActivity](../accelbyte_py_sdk/api/eventlog/models/models_user_last_activity.py) |
| models.UX | [ModelsUX](../accelbyte_py_sdk/api/eventlog/models/models_ux.py) |
