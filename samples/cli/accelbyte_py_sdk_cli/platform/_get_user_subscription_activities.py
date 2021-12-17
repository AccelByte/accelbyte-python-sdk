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
from accelbyte_py_sdk.api.platform import get_user_subscription_activities as get_user_subscription_activities_internal
from accelbyte_py_sdk.api.platform.models import SubscriptionActivityPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--exclude_system", "exclude_system", type=bool)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--subscription_id", "subscription_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_user_subscription_activities(
        user_id: str,
        exclude_system: Optional[bool] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        subscription_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_user_subscription_activities_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_user_subscription_activities_internal(
        user_id=user_id,
        exclude_system=exclude_system,
        limit=limit,
        offset=offset,
        subscription_id=subscription_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getUserSubscriptionActivities failed: {str(error)}")
    click.echo("getUserSubscriptionActivities success")
