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
from ....api.platform import list_basic_items_by_features as list_basic_items_by_features_internal
from ....api.platform.models import BasicItem


@click.command()
@click.option("--features", "features", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def list_basic_items_by_features(
        features: Optional[str] = None,
        active_only: Optional[bool] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_basic_items_by_features_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        features_json = json.loads(features)
        features = [str(i0) for i0 in features_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'features'. {str(e)}") from e
    _, error = list_basic_items_by_features_internal(
        features=features,
        active_only=active_only,
        namespace=namespace,
    )
    if error:
        raise Exception(f"listBasicItemsByFeatures failed: {str(error)}")
    click.echo("listBasicItemsByFeatures success")
