# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_query_event_stream_handler():
    from accelbyte_py_sdk.api.eventlog import query_event_stream_handler
    from accelbyte_py_sdk.api.eventlog.models import ModelsGenericQueryPayload

    result, error = query_event_stream_handler(
        body=ModelsGenericQueryPayload.create(
            client_id="<client-id>",
            event_name="<event-name>",
            payload_query={},
            session_id="<session-id>",
            trace_id="<trace-id>",
            user_id="<user-id>",
            version=1,
        )
    )
    if error:
        print(error)


def example_get_event_specific_to_user():
    from accelbyte_py_sdk.api.eventlog import get_event_specific_user_v2_handler

    result, error = get_event_specific_user_v2_handler(user_id="<user-id>")
    if error:
        print(error)
