# justice-iam-service (4.4.1)

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
from ....api.iam import delete_role_permission as delete_role_permission_internal


@click.command()
@click.argument("role_id", type=str)
@click.argument("resource", type=str)
@click.argument("action", type=int)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def delete_role_permission(
        role_id: str,
        resource: str,
        action: int,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_role_permission_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = delete_role_permission_internal(
        role_id=role_id,
        resource=resource,
        action=action,
    )
    if error:
        raise Exception(f"DeleteRolePermission failed: {str(error)}")
    click.echo("DeleteRolePermission success")