# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Accelbyte Cloud Platform Service (4.14.0)

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
    generate_invoice_summary as generate_invoice_summary_internal,
)
from accelbyte_py_sdk.api.platform.models import InvoiceSummary
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("end_time", type=str)
@click.argument("start_time", type=str)
@click.option("--feature", "feature", type=str)
@click.option("--item_id", "item_id", type=str)
@click.option("--item_type", "item_type", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def generate_invoice_summary(
    end_time: str,
    start_time: str,
    feature: Optional[str] = None,
    item_id: Optional[str] = None,
    item_type: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(generate_invoice_summary_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = generate_invoice_summary_internal(
        end_time=end_time,
        start_time=start_time,
        feature=feature,
        item_id=item_id,
        item_type=item_type,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"generateInvoiceSummary failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


generate_invoice_summary.operation_id = "generateInvoiceSummary"
generate_invoice_summary.is_deprecated = False
