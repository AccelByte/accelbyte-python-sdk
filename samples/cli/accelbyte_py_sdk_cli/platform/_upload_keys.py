# justice-platform-service (3.39.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from accelbyte_py_sdk.api.platform import upload_keys as upload_keys_internal
from accelbyte_py_sdk.api.platform.models import BulkOperationResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity


@click.command()
@click.argument("key_group_id", type=str)
@click.option("--file", "file", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def upload_keys(
        key_group_id: str,
        file: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(upload_keys_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = upload_keys_internal(
        key_group_id=key_group_id,
        file=file,
        namespace=namespace,
    )
    if error:
        raise Exception(f"uploadKeys failed: {str(error)}")
    click.echo("uploadKeys success")
