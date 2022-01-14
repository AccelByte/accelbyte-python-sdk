# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_session():
    from accelbyte_py_sdk.api.dsmc import create_session
    from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest
    from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchMember
    from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchParty
    from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchingAlly

    result, error = create_session(
        body=ModelsCreateSessionRequest.create(
            client_version="<client-version>",
            configuration="<configuration>",
            deployment="<deployment>",
            game_mode="<game-mode>",
            matching_allies=[
                ModelsRequestMatchingAlly.create(
                    matching_parties=[
                        ModelsRequestMatchParty.create(
                            party_attributes={},
                            party_id="<party-id>",
                            party_members=[
                                ModelsRequestMatchMember.create(
                                    user_id="<user-id>"
                                )
                            ]
                        )
                    ]
                )
            ],
            namespace="<namespace>",
            pod_name="<pod-name>",
            region="<your-region>",
            session_id="<session-id>"
        )
    )
    if error:
        print(error)


def example_get_session():
    from accelbyte_py_sdk.api.dsmc import get_session

    result, error = get_session(
        session_id="<session-id>"
    )
    if error:
        print(error)


def example_claim_server():
    from accelbyte_py_sdk.api.dsmc import claim_server
    from accelbyte_py_sdk.api.dsmc.models import ModelsClaimSessionRequest

    result, error = claim_server(
        body=ModelsClaimSessionRequest.create(
            session_id="<session-id>"
        )
    )
    if error:
        print(error)
