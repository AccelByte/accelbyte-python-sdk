# justice-iam-service (4.9.0)

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
from accelbyte_py_sdk.api.iam import add_role_permission as add_role_permission_internal
from accelbyte_py_sdk.api.iam.models import ModelUpdatePermissionScheduleRequest


@click.command()
@click.argument("body", type=str)
@click.argument("action", type=int)
@click.argument("resource", type=str)
@click.argument("role_id", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def add_role_permission(
        body: str,
        action: int,
        resource: str,
        role_id: str,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(add_role_permission_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = ModelUpdatePermissionScheduleRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = add_role_permission_internal(
        body=body,
        action=action,
        resource=resource,
        role_id=role_id,
    )
    if error:
        raise Exception(f"AddRolePermission failed: {str(error)}")
    click.echo("AddRolePermission success")
