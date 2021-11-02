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
from ....api.platform import public_search_items as public_search_items_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ItemPagingSlicedResult


@click.command()
@click.argument("language", type=str)
@click.argument("keyword", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--region", "region", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_search_items(
        language: str,
        keyword: str,
        store_id: Optional[str] = None,
        region: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_search_items_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = public_search_items_internal(
        language=language,
        keyword=keyword,
        store_id=store_id,
        region=region,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicSearchItems failed: {str(error)}")
    click.echo("publicSearchItems success")