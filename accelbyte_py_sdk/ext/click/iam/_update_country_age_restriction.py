import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import update_country_age_restriction as update_country_age_restriction_internal
from ....api.iam.models import ModelCountry
from ....api.iam.models import ModelCountryAgeRestrictionRequest


@click.command()
@click.argument("body", type=str)
@click.argument("country_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_country_age_restriction(
        body: str,
        country_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_country_age_restriction_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelCountryAgeRestrictionRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_country_age_restriction_internal(
        body=body,
        country_code=country_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"UpdateCountryAgeRestriction failed: {str(error)}")
    click.echo("UpdateCountryAgeRestriction success")
