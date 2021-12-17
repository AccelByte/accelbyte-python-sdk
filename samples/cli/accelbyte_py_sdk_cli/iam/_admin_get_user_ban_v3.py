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
from accelbyte_py_sdk.api.iam import admin_get_user_ban_v3 as admin_get_user_ban_v3_internal
from accelbyte_py_sdk.api.iam.models import ModelGetUserBanV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse


@click.command()
@click.argument("user_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_get_user_ban_v3(
        user_id: str,
        active_only: Optional[bool] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_get_user_ban_v3_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_get_user_ban_v3_internal(
        user_id=user_id,
        active_only=active_only,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetUserBanV3 failed: {str(error)}")
    click.echo("AdminGetUserBanV3 success")
