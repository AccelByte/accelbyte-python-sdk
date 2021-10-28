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
from ....api.iam import admin_get_roles_v4 as admin_get_roles_v4_internal
from ....api.iam.models import ModelListRoleV4Response
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--is_wildcard", "is_wildcard", type=bool)
@click.option("--admin_role", "admin_role", type=bool)
@click.option("--limit", "limit", type=int)
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_get_roles_v4(
        is_wildcard: Optional[bool] = None,
        admin_role: Optional[bool] = None,
        limit: Optional[int] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_get_roles_v4_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_get_roles_v4_internal(
        is_wildcard=is_wildcard,
        admin_role=admin_role,
        limit=limit,
        after=after,
        before=before,
    )
    if error:
        raise Exception(f"AdminGetRolesV4 failed: {str(error)}")
    click.echo("AdminGetRolesV4 success")
