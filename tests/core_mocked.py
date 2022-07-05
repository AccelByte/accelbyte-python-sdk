BASE_URL = "http://0.0.0.0:8080"
CLIENT_ID = "admin"
CLIENT_SECRET = "admin"
NAMESPACE = "test"


def test_file_upload():
    import accelbyte_py_sdk
    from pathlib import Path
    from accelbyte_py_sdk.core import MyConfigRepository
    from accelbyte_py_sdk.services.auth import login_client
    from accelbyte_py_sdk.api.achievement import import_achievements

    config = MyConfigRepository(
        base_url=BASE_URL,
        client_id=CLIENT_ID,
        client_secret=CLIENT_SECRET,
        namespace=NAMESPACE,
    )
    accelbyte_py_sdk.initialize(options={"config": config})

    file = "requirements.txt"
    assert Path(file).exists()

    result, error = login_client()
    assert error is None

    result, error = import_achievements(file=file)
    assert error is None

    accelbyte_py_sdk.reset()


def test_file_download():
    import accelbyte_py_sdk
    from accelbyte_py_sdk.core import MyConfigRepository
    from accelbyte_py_sdk.services.auth import login_client
    from accelbyte_py_sdk.api.social import get_slot_data

    config = MyConfigRepository(
        base_url=BASE_URL,
        client_id=CLIENT_ID,
        client_secret=CLIENT_SECRET,
        namespace=NAMESPACE,
    )
    accelbyte_py_sdk.initialize(options={"config": config})

    result, error = login_client()
    assert error is None

    result, error = get_slot_data("a", "a")
    assert error is None

    accelbyte_py_sdk.reset()


if __name__ == "__main__":
    test_file_download()
    test_file_upload()
