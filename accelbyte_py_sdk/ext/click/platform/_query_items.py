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
from ....api.platform import query_items as query_items_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullItemPagingSlicedResult
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--store_id", "store_id", type=str)
@click.option("--category_path", "category_path", type=str)
@click.option("--item_type", "item_type", type=str)
@click.option("--app_type", "app_type", type=str)
@click.option("--base_app_id", "base_app_id", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--features", "features", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--region", "region", type=str)
@click.option("--available_date", "available_date", type=str)
@click.option("--target_namespace", "target_namespace", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--sort_by", "sort_by", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def query_items(
        store_id: Optional[str] = None,
        category_path: Optional[str] = None,
        item_type: Optional[str] = None,
        app_type: Optional[str] = None,
        base_app_id: Optional[str] = None,
        tags: Optional[str] = None,
        features: Optional[str] = None,
        active_only: Optional[bool] = None,
        region: Optional[str] = None,
        available_date: Optional[str] = None,
        target_namespace: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        sort_by: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_items_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = query_items_internal(
        store_id=store_id,
        category_path=category_path,
        item_type=item_type,
        app_type=app_type,
        base_app_id=base_app_id,
        tags=tags,
        features=features,
        active_only=active_only,
        region=region,
        available_date=available_date,
        target_namespace=target_namespace,
        offset=offset,
        limit=limit,
        sort_by=sort_by,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryItems failed: {str(error)}")
    click.echo("queryItems success")
