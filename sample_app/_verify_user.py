import click

from accelbyte_py_sdk.api.iam import admin_verify_user_without_verification_code_v3

from ._utils import login_user


@click.command()
@click.argument("user_id")
@click.option("--namespace")
@click.option("--doc", type=bool)
def verify_user(
        user_id,
        namespace,
        doc,
):
    login_user(None, None)

    if doc:
        click.echo(admin_verify_user_without_verification_code_v3.__doc__)
    result, error = admin_verify_user_without_verification_code_v3(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Verify user success.")
