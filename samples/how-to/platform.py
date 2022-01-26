# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_store():
    from accelbyte_py_sdk.api.platform import create_store
    from accelbyte_py_sdk.api.platform.models import StoreCreate

    result, error = create_store(
        body=StoreCreate.create(
            title="<title>"
        )
    )
    if error:
        print(error)


def example_delete_store():
    from accelbyte_py_sdk.api.platform import delete_store

    result, error = delete_store(
        store_id="<store-id>"
    )
    if error:
        print(error)


def example_get_store():
    from accelbyte_py_sdk.api.platform import get_store

    result, error = get_store(
        store_id="<store-id>"
    )
    if error:
        print(error)


def example_update_store():
    from accelbyte_py_sdk.api.platform import update_store
    from accelbyte_py_sdk.api.platform.models import StoreUpdate

    result, error = update_store(
        body=StoreUpdate.create(
            title="<title>"
        ),
        store_id="<store-id>"
    )
    if error:
        print(error)
