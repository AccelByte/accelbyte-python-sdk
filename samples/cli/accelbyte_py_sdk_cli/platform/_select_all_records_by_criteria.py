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
    select_all_records_by_criteria as select_all_records_by_criteria_internal,
)
from accelbyte_py_sdk.api.platform.models import ErrorEntity


@click.command()
@click.argument("store_id", type=str)
@click.option("--action", "action", type=str)
@click.option("--item_sku", "item_sku", type=str)
@click.option("--item_type", "item_type", type=str)
@click.option("--selected", "selected", type=bool)
@click.option("--type", "type_", type=str)
@click.option("--updated_at_end", "updated_at_end", type=str)
@click.option("--updated_at_start", "updated_at_start", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def select_all_records_by_criteria(
    store_id: str,
    action: Optional[str] = None,
    item_sku: Optional[str] = None,
    item_type: Optional[str] = None,
    selected: Optional[bool] = None,
    type_: Optional[str] = None,
    updated_at_end: Optional[str] = None,
    updated_at_start: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(select_all_records_by_criteria_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = select_all_records_by_criteria_internal(
        store_id=store_id,
        action=action,
        item_sku=item_sku,
        item_type=item_type,
        selected=selected,
        type_=type_,
        updated_at_end=updated_at_end,
        updated_at_start=updated_at_start,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"selectAllRecordsByCriteria failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


select_all_records_by_criteria.operation_id = "selectAllRecordsByCriteria"
select_all_records_by_criteria.is_deprecated = False
