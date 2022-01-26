# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_tag():
    from accelbyte_py_sdk.api.ugc import admin_create_tag
    from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagRequest

    result, error = admin_create_tag(
        body=ModelsCreateTagRequest.create(
            tag="<tag>"
        )
    )
    if error:
        print(error)


def example_delete_tag():
    from accelbyte_py_sdk.api.ugc import admin_delete_tag

    result, error = admin_delete_tag(
        tag_id="<tag-id>"
    )
    if error:
        print(error)


def example_get_tags():
    from accelbyte_py_sdk.api.ugc import admin_get_tag

    result, error = admin_get_tag()
    if error:
        print(error)


def example_update_tag():
    from accelbyte_py_sdk.api.ugc import admin_update_tag
    from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagRequest

    result, error = admin_update_tag(
        body=ModelsCreateTagRequest.create(
            tag="<tag>"
        ),
        tag_id="<tag-id>"
    )
    if error:
        print(error)
