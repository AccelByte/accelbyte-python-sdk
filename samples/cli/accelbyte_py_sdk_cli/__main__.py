import importlib.util
import logging
import shlex
from pathlib import Path
from typing import Any, Optional

import click

from accelbyte_py_sdk import initialize

from ._sessions import SessionWriter
from ._sessions import TapSessionWriter
from ._sessions import one_shot_websocket
from ._sessions import start_batched_ws_session


@click.group()
def entry_point():
    initialize()


# noinspection PyUnresolvedReferences
@click.command()
@click.option("--continue_on_error", is_flag=True)
@click.option("--verbose", is_flag=True)
@click.option("--writer", type=click.Choice(["default", "tap"], case_sensitive=False))
@click.pass_context
def start_interactive_session(
    ctx,
    continue_on_error: bool = False,
    verbose: bool = False,
    writer: str = "default",
):
    writer = TapSessionWriter() if writer == "tap" else SessionWriter()

    click.echo = __intercept(ctx, "echo")
    logging.getLogger("accelbyte_py_sdk.http").error = __intercept(ctx, "log")

    error_count = 0

    while True:
        message = input()

        if message == "exit()":
            break
        elif message.strip() == "":
            continue

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            args = shlex.split(message)
            cmd_name, cmd, args = entry_point.resolve_command(ctx, args)
            sub_ctx = cmd.make_context(cmd_name, list(args), parent=ctx)
        except Exception as e:
            writer.write_warning(f"unable to resolve command '{message}'")
            if continue_on_error:
                error_count += 1
                continue
            else:
                exit(1)
                return

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            operation_id = cmd.operation_id
            is_deprecated = cmd.is_deprecated
        except Exception as e:
            writer.write_warning(f"operation identifier not found '{message}'")
            if continue_on_error:
                error_count += 1
                continue
            else:
                exit(1)
                return

        if is_deprecated:
            writer.write_warning(f"deprecated {operation_id}")
            if continue_on_error:
                error_count += 1
                continue
            else:
                exit(1)
                return

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            sub_ctx.command.invoke(sub_ctx)
        except Exception as e:
            indent = "  "
            delimiter = f"\n{indent}"
            error = operation_id
            lines = ["---", str(e)]
            if hasattr(ctx, "log") and isinstance(ctx.log, str):
                lines.extend(ctx.log.splitlines(keepends=False))
                ctx.log = None
            error += delimiter + delimiter.join(lines)
            writer.write_error(error.rstrip())
            if continue_on_error:
                error_count += 1
                continue
            else:
                exit(1)
                return

        success = operation_id
        if verbose and hasattr(ctx, "echo") and ctx.echo:
            echo = str(ctx.echo)
            if echo:
                indent = "  "
                success += f"\n{indent}---\n"
                success += "".join(
                    f"{indent}{line}" for line in echo.splitlines(keepends=True)
                ).rstrip()
            ctx.echo = None
        writer.write_log(success)

    print(writer.flush())

    if error_count != 0:
        exit(1)


def add_commands(grp, cmds, prefix: str = None):
    for cmd in cmds:
        grp.add_command(
            cmd, name=f"{f'{prefix}-' if prefix is not None else ''}{cmd.name}"
        )


def __intercept(obj, attr: str):
    def __intercept_impl(message: Optional[Any] = None, *args, **kwargs):
        setattr(obj, "attr", message)

    return __intercept_impl


entry_point.add_command(start_interactive_session)
entry_point.add_command(one_shot_websocket)
entry_point.add_command(start_batched_ws_session)

# add submodules programmatically
cwd = Path(__file__).parent
whitelist = ()
dirs = [
    d.name
    for d in cwd.glob("*")
    if d.is_dir() and not d.name.startswith("_") and d.name not in whitelist
]
for d in dirs:
    module = importlib.import_module(name=f".{d}", package=cwd.name)
    if module and (commands := getattr(module, "commands", None)):
        add_commands(entry_point, commands, prefix=d)


if __name__ == "__main__":
    entry_point()
