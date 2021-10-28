import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_country_location_v3 as get_country_location_v3_internal
from ....api.iam.models import OauthmodelCountryLocationResponse


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_country_location_v3(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_country_location_v3_internal.__doc__)
    result, error = get_country_location_v3_internal(
    )
    if error:
        raise Exception(f"GetCountryLocationV3 failed: {str(error)}")
    click.echo("GetCountryLocationV3 success")
