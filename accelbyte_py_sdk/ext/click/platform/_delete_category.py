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
from ....api.platform import delete_category as delete_category_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullCategoryInfo


@click.command()
@click.argument("category_path", type=str)
@click.argument("store_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def delete_category(
        category_path: str,
        store_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_category_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = delete_category_internal(
        category_path=category_path,
        store_id=store_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteCategory failed: {str(error)}")
    click.echo("deleteCategory success")