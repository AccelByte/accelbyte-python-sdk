# justice-platform-service (3.34.0)

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
from ....api.platform import get_user_subscription_billing_histories as get_user_subscription_billing_histories_internal
from ....api.platform.models import BillingHistoryPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.argument("subscription_id", type=str)
@click.option("--exclude_free", "exclude_free", type=bool)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_user_subscription_billing_histories(
        user_id: str,
        subscription_id: str,
        exclude_free: Optional[bool] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_user_subscription_billing_histories_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_user_subscription_billing_histories_internal(
        user_id=user_id,
        subscription_id=subscription_id,
        exclude_free=exclude_free,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getUserSubscriptionBillingHistories failed: {str(error)}")
    click.echo("getUserSubscriptionBillingHistories success")