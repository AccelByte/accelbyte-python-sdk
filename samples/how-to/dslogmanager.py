# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_check_server_logs():
    from accelbyte_py_sdk.api.dslogmanager import check_server_logs

    result, error = check_server_logs(
        pod_name="<your-pod-name>"
    )
    if error:
        print(error)


def example_download_server_logs():
    from accelbyte_py_sdk.api.dslogmanager import download_server_logs

    result, error = download_server_logs(
        pod_name="<your-pod-name>"
    )
    if error:
        print(error)


def example_list_terminated_servers():
    from accelbyte_py_sdk.api.dslogmanager import list_terminated_servers

    result, error = list_terminated_servers(
        deployment="<your-deployment>",
        pod_name="<your-pod-name>"
    )
    if error:
        print(error)
