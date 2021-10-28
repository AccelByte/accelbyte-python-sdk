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
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_basic_items_by_features(
        features: Optional[str] = None,
        active_only: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_basic_items_by_features_internal.__doc__)
    try:
        features_json = json.loads(features)
        features = [str.create_from_dict(i0) for i0 in features_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'features'. {str(e)}")
    result, error = list_basic_items_by_features_internal(
        features=features,
        active_only=active_only,
        namespace=namespace,
    )
    if error:
        raise Exception(f"listBasicItemsByFeatures failed: {str(error)}")
    click.echo("listBasicItemsByFeatures success")
