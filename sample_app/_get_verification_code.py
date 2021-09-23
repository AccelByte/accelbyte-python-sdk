import yaml

import click

from accelbyte_py_sdk.api.iam import get_user_verification_code

from ._utils import login_user


@click.command()
@click.argument("user_id")
@click.option("--namespace")
@click.option("--doc", type=bool)
def get_verification_code(
        user_id,
        namespace,
        doc,
):
    login_user(None, None)

    if doc:
        click.echo(get_user_verification_code.__doc__)
    result, error = get_user_verification_code(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get verification code success.")
    click.echo(yaml.safe_dump(result))
