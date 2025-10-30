# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Legal Service

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
    old_retrieve_latest_policies_by_namespace_and_country_public as old_retrieve_latest_policies_by_namespace_and_country_public_internal,
)
from accelbyte_py_sdk.api.legal.models import RetrievePolicyPublicResponse


@click.command()
@click.argument("country_code", type=str)
@click.option("--always_include_default", "always_include_default", type=bool)
@click.option("--default_on_empty", "default_on_empty", type=bool)
@click.option("--policy_type", "policy_type", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--visible_only", "visible_only", type=bool)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def old_retrieve_latest_policies_by_namespace_and_country_public(
    country_code: str,
    always_include_default: Optional[bool] = None,
    default_on_empty: Optional[bool] = None,
    policy_type: Optional[str] = None,
    tags: Optional[str] = None,
    visible_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(
            old_retrieve_latest_policies_by_namespace_and_country_public_internal.__doc__
        )
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    (
        result,
        error,
    ) = old_retrieve_latest_policies_by_namespace_and_country_public_internal(
        country_code=country_code,
        always_include_default=always_include_default,
        default_on_empty=default_on_empty,
        policy_type=policy_type,
        tags=tags,
        visible_only=visible_only,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(
            f"oldRetrieveLatestPoliciesByNamespaceAndCountryPublic failed: {str(error)}"
        )
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


old_retrieve_latest_policies_by_namespace_and_country_public.operation_id = (
    "oldRetrieveLatestPoliciesByNamespaceAndCountryPublic"
)
old_retrieve_latest_policies_by_namespace_and_country_public.is_deprecated = False
