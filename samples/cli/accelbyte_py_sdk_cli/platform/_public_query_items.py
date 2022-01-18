# justice-platform-service (4.1.1)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from accelbyte_py_sdk.api.platform import public_query_items as public_query_items_internal
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemPagingSlicedResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--app_type", "app_type", type=str)
@click.option("--base_app_id", "base_app_id", type=str)
@click.option("--category_path", "category_path", type=str)
@click.option("--features", "features", type=str)
@click.option("--item_type", "item_type", type=str)
@click.option("--language", "language", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--region", "region", type=str)
@click.option("--sort_by", "sort_by", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_query_items(
        app_type: Optional[str] = None,
        base_app_id: Optional[str] = None,
        category_path: Optional[str] = None,
        features: Optional[str] = None,
        item_type: Optional[str] = None,
        language: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        region: Optional[str] = None,
        sort_by: Optional[str] = None,
        store_id: Optional[str] = None,
        tags: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_query_items_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = public_query_items_internal(
        app_type=app_type,
        base_app_id=base_app_id,
        category_path=category_path,
        features=features,
        item_type=item_type,
        language=language,
        limit=limit,
        offset=offset,
        region=region,
        sort_by=sort_by,
        store_id=store_id,
        tags=tags,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicQueryItems failed: {str(error)}")
    click.echo("publicQueryItems success")
