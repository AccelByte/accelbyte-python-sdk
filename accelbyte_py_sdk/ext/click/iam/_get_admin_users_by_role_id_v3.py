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
from ....api.iam import get_admin_users_by_role_id_v3 as get_admin_users_by_role_id_v3_internal
from ....api.iam.models import ModelGetUsersResponseWithPaginationV3
from ....api.iam.models import RestapiErrorResponse


@click.command()
@click.argument("role_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--after", "after", type=int)
@click.option("--before", "before", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_admin_users_by_role_id_v3(
        role_id: str,
        limit: Optional[int] = None,
        after: Optional[int] = None,
        before: Optional[int] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_admin_users_by_role_id_v3_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_admin_users_by_role_id_v3_internal(
        role_id=role_id,
        limit=limit,
        after=after,
        before=before,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetAdminUsersByRoleIdV3 failed: {str(error)}")
    click.echo("GetAdminUsersByRoleIdV3 success")