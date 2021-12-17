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
from ....api.iam import admin_search_users_v2 as admin_search_users_v2_internal
from ....api.iam.models import ModelSearchUsersByPlatformIDResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--display_name", "display_name", type=str)
@click.option("--limit", "limit", type=str)
@click.option("--login_id", "login_id", type=str)
@click.option("--platform_user_id", "platform_user_id", type=str)
@click.option("--role_id", "role_id", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_search_users_v2(
        platform_id: str,
        after: Optional[str] = None,
        before: Optional[str] = None,
        display_name: Optional[str] = None,
        limit: Optional[str] = None,
        login_id: Optional[str] = None,
        platform_user_id: Optional[str] = None,
        role_id: Optional[str] = None,
        user_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_search_users_v2_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_search_users_v2_internal(
        platform_id=platform_id,
        after=after,
        before=before,
        display_name=display_name,
        limit=limit,
        login_id=login_id,
        platform_user_id=platform_user_id,
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminSearchUsersV2 failed: {str(error)}")
    click.echo("AdminSearchUsersV2 success")
