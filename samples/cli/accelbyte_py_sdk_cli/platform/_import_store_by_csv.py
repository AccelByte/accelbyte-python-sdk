# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Platform Service

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
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.platform import (
    import_store_by_csv as import_store_by_csv_internal,
)
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ImportStoreResult


@click.command()
@click.argument("store_id", type=str)
@click.option("--category", "category", type=str)
@click.option("--display", "display", type=str)
@click.option("--item", "item", type=str)
@click.option("--notes", "notes", type=str)
@click.option("--section", "section", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def import_store_by_csv(
    store_id: str,
    category: Optional[str] = None,
    display: Optional[str] = None,
    item: Optional[str] = None,
    notes: Optional[str] = None,
    section: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(import_store_by_csv_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = import_store_by_csv_internal(
        store_id=store_id,
        category=category,
        display=display,
        item=item,
        notes=notes,
        section=section,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"importStoreByCSV failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


import_store_by_csv.operation_id = "importStoreByCSV"
import_store_by_csv.is_deprecated = False
