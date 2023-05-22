# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Legal Service (1.29.1)

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
from accelbyte_py_sdk.api.legal import (
    indirect_bulk_accept_versioned_policy as indirect_bulk_accept_versioned_policy_internal,
)
from accelbyte_py_sdk.api.legal.models import AcceptAgreementRequest
from accelbyte_py_sdk.api.legal.models import AcceptAgreementResponse


@click.command()
@click.argument("user_id", type=str)
@click.argument("client_id", type=str)
@click.argument("country_code", type=str)
@click.option("--body", "body", type=str)
@click.option("--publisher_user_id", "publisher_user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def indirect_bulk_accept_versioned_policy(
    user_id: str,
    client_id: str,
    country_code: str,
    body: Optional[str] = None,
    publisher_user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(indirect_bulk_accept_versioned_policy_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if body is not None:
        try:
            body_json = json.loads(body)
            body = [AcceptAgreementRequest.create_from_dict(i0) for i0 in body_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    result, error = indirect_bulk_accept_versioned_policy_internal(
        user_id=user_id,
        client_id=client_id,
        country_code=country_code,
        body=body,
        publisher_user_id=publisher_user_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"indirectBulkAcceptVersionedPolicy failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


indirect_bulk_accept_versioned_policy.operation_id = "indirectBulkAcceptVersionedPolicy"
indirect_bulk_accept_versioned_policy.is_deprecated = False
