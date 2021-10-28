import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import add_country_group as add_country_group_internal
from ....api.basic.models import AddCountryGroupRequest
from ....api.basic.models import AddCountryGroupResponse
from ....api.basic.models import ErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def add_country_group(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(add_country_group_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = AddCountryGroupRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = add_country_group_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"addCountryGroup failed: {str(error)}")
    click.echo("addCountryGroup success")
