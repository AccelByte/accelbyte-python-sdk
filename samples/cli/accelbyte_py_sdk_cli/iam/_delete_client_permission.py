# justice-iam-service (4.9.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from accelbyte_py_sdk.api.iam import delete_client_permission as delete_client_permission_internal


@click.command()
@click.argument("action", type=int)
@click.argument("client_id", type=str)
@click.argument("resource", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def delete_client_permission(
        action: int,
        client_id: str,
        resource: str,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_client_permission_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = delete_client_permission_internal(
        action=action,
        client_id=client_id,
        resource=resource,
    )
    if error:
        raise Exception(f"DeleteClientPermission failed: {str(error)}")
    click.echo("DeleteClientPermission success")