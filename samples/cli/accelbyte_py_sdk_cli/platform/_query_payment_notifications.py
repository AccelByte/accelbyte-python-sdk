# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Accelbyte Cloud Platform Service (4.23.0)

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
    query_payment_notifications as query_payment_notifications_internal,
)
from accelbyte_py_sdk.api.platform.models import PaymentNotificationPagingSlicedResult


@click.command()
@click.option("--end_date", "end_date", type=str)
@click.option("--external_id", "external_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--notification_source", "notification_source", type=str)
@click.option("--notification_type", "notification_type", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--payment_order_no", "payment_order_no", type=str)
@click.option("--start_date", "start_date", type=str)
@click.option("--status", "status", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def query_payment_notifications(
    end_date: Optional[str] = None,
    external_id: Optional[str] = None,
    limit: Optional[int] = None,
    notification_source: Optional[str] = None,
    notification_type: Optional[str] = None,
    offset: Optional[int] = None,
    payment_order_no: Optional[str] = None,
    start_date: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_payment_notifications_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = query_payment_notifications_internal(
        end_date=end_date,
        external_id=external_id,
        limit=limit,
        notification_source=notification_source,
        notification_type=notification_type,
        offset=offset,
        payment_order_no=payment_order_no,
        start_date=start_date,
        status=status,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"queryPaymentNotifications failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


query_payment_notifications.operation_id = "queryPaymentNotifications"
query_payment_notifications.is_deprecated = False
