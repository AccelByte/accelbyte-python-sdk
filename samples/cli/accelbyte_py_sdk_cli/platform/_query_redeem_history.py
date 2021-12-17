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
from ....api.platform import query_redeem_history as query_redeem_history_internal
from ....api.platform.models import RedeemHistoryPagingSlicedResult


@click.command()
@click.argument("campaign_id", type=str)
@click.option("--code", "code", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--user_id", "user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def query_redeem_history(
        campaign_id: str,
        code: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        user_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_redeem_history_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = query_redeem_history_internal(
        campaign_id=campaign_id,
        code=code,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryRedeemHistory failed: {str(error)}")
    click.echo("queryRedeemHistory success")
