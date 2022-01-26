# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_send_free_form_notification_to_user():
    from accelbyte_py_sdk.api.lobby import free_form_notification
    from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest

    result, error = free_form_notification(
        body=ModelFreeFormNotificationRequest.create(
            message="<message>",
            topic="<topic>",
        )
    )
    if error:
        print(error)


async def example_receive_and_send_formatted_web_socket_message():
    from accelbyte_py_sdk.core import get_access_token, get_base_url
    from accelbyte_py_sdk.core import WebsocketsWSClient

    base_url, error = get_base_url()
    if error:
        exit(1)

    access_token, error = get_access_token()
    if error:
        exit(1)

    client = WebsocketsWSClient(
        uri=base_url,
        access_token=access_token
    )

    # A.1 Register a listener for received web socket messages.
    client.listeners.append(on_receive)

    await client.connect()

    # ---

    # B.1. Create an instance of the desired web socket message type.
    # Full list of accepted web socket lobby messages are in 'accelbyte_py_sdk.api.lobby.wss_models'.
    from accelbyte_py_sdk.api.lobby.wss_models import OfflineNotificationRequest
    offline_notification_request = OfflineNotificationRequest()

    # B.2 Format then send the web socket message.
    # Can only be done after 'await client.connect()'.
    await client.send(offline_notification_request.to_wsm())

    # ---

    # B.1. Create an instance of the desired web socket message type.
    # Full list of accepted web socket lobby messages are in 'accelbyte_py_sdk.api.lobby.wss_models'.
    from accelbyte_py_sdk.api.lobby.wss_models import PartyJoinRequest
    party_join_request = PartyJoinRequest()
    party_join_request.invitation_token = "<invitation-token>"
    party_join_request.party_id = "<party-id>"

    # B.2 Format then send the web socket message.
    # Can only be done after 'await client.connect()'.
    await client.send(party_join_request.to_wsm())


async def on_receive(message: str):
    from accelbyte_py_sdk.api.lobby.wss_models import parse_wsm

    # A.2. Parse received web socket message.
    result, error = parse_wsm(message)
    if error:
        print(error)
