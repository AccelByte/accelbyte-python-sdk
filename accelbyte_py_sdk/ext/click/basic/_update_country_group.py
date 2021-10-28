import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import update_country_group as update_country_group_internal
from ....api.basic.models import CountryGroupObject
from ....api.basic.models import ErrorEntity
from ....api.basic.models import UpdateCountryGroupRequest
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("country_group_code", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_country_group(
        country_group_code: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_country_group_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = UpdateCountryGroupRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_country_group_internal(
        country_group_code=country_group_code,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateCountryGroup failed: {str(error)}")
    click.echo("updateCountryGroup success")
