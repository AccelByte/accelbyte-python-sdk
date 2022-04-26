# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# justice-legal-service (1.22.0)

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
from accelbyte_py_sdk.api.legal import retrieve_latest_policies as retrieve_latest_policies_internal
from accelbyte_py_sdk.api.legal.models import RetrievePolicyPublicResponse


@click.command()
@click.argument("country_code", type=str)
@click.option("--default_on_empty", "default_on_empty", type=bool)
@click.option("--policy_type", "policy_type", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def retrieve_latest_policies(
        country_code: str,
        default_on_empty: Optional[bool] = None,
        policy_type: Optional[str] = None,
        tags: Optional[str] = None,
        login_as: Optional[str] = None,
        login_with_auth: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(retrieve_latest_policies_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {
            "Authorization": login_with_auth
        }
    else:
        login_as_internal(login_as)
    result, error = retrieve_latest_policies_internal(
        country_code=country_code,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"retrieveLatestPolicies failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))
