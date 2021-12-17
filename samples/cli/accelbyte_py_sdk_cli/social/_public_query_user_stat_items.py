# justice-social-service (1.22.0)

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
from ....api.social import public_query_user_stat_items as public_query_user_stat_items_internal
from ....api.social.models import UserStatItemPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--stat_codes", "stat_codes", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_query_user_stat_items(
        user_id: str,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        stat_codes: Optional[str] = None,
        tags: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_query_user_stat_items_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = public_query_user_stat_items_internal(
        user_id=user_id,
        limit=limit,
        offset=offset,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicQueryUserStatItems failed: {str(error)}")
    click.echo("publicQueryUserStatItems success")
