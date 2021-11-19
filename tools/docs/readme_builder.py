import argparse
import logging
import os
import shlex
from pathlib import Path
from typing import Any, Dict, Optional
from urllib.parse import unquote

import json
import yaml

logger = logging.getLogger(Path(__file__).stem)
logger.addHandler(logging.StreamHandler())


def print_file_content(line_num: int, str_path: str) -> str:
    path = get_path_from_str(str_path)
    if path is None:
        log_error_then_exit(f"[PRINTFC:{line_num}] File not found: '{str_path}'")
    content = path.read_text()
    return content


def print_file_snippet(line_num: int, str_path: str, start_token: str, end_token: str) -> str:
    path = get_path_from_str(str_path)
    if path is None:
        log_error_then_exit(f"[PRINTFS:{line_num}] File not found: '{str_path}'")
    found = False
    ended = False
    snippet_lines = []
    for line in path.read_text().splitlines(keepends=False):
        if not found:
            if line == start_token:
                found = True
                snippet_lines.append(line)
        elif found:
            snippet_lines.append(line)
            if line == end_token:
                ended = True
                break
    if not found:
        log_error_then_exit(f"[PRINTFS:{line_num}] Snippet not found in: '{str_path}'")
    if not ended:
        log_error_then_exit(f"[PRINTFS:{line_num}] Snippet never terminated.")
    snippet = "\n".join(snippet_lines)
    return snippet


def print_json(line_num: int, str_path: str, json_ref: str = None, fmt: str = "json") -> str:
    path = get_path_from_str(str_path)
    if path is None:
        log_error_then_exit(f"[PRINTJSON:{line_num}] File not found: '{str_path}'")
    obj = yaml.safe_load(path.read_text())
    node = obj
    if json_ref:
        ref_parts = json_ref.removeprefix("#/").split("/")
        for ref_part in ref_parts:
            if isinstance(node, list):
                try:
                    ref_part_index = int(ref_part)
                    node = node[ref_part_index]
                except ValueError:
                    log_error_then_exit(f"[PRINTJSON:{line_num}] Json Reference not found: '{json_ref}'")
            else:
                ref_part = unquote(ref_part)
                if ref_part not in node:
                    log_error_then_exit(f"[PRINTJSON:{line_num}] Json Reference not found: '{json_ref}'")
                node = node[ref_part]
    if fmt == "json":
        result = json.dumps(node, indent=2)
    else:
        result = yaml.safe_dump(node, sort_keys=False)
    return result


def main(
        src: str,
        dst: Optional[str] = None,
):

    src = Path(src)

    if not src.exists():
        log_error_then_exit(f"[ERR] File not found: '{src}'")

    src_file_ext = "".join(src.suffixes)
    if src_file_ext != ".t.md":
        log_error_then_exit(f"[ERR] Incorrect file extension: '{src_file_ext}'")

    if dst is None:
        dst = src.parent / f"{src.stem.rstrip('.'.join(src.suffixes))}.md"
    else:
        dst = Path(dst)

    commands = {
        "PRINTFC": print_file_content,
        "PRINTFS": print_file_snippet,
        "PRINTJSON": print_json,
    }

    content = ""
    for index, line in enumerate(src.read_text().splitlines(keepends=True)):
        if line.startswith("[//]: # (<< ") and (line.endswith(")\n")):
            line = line.removeprefix("[//]: # (<< ").removesuffix(")\n")
            command_key, args_str = line.split(" ", maxsplit=1)
            command = commands.get(command_key)
            if command is None:
                print(f"[ERR] Unrecognized command {command_key}")
                continue
            args = shlex.split(args_str)
            try:
                content += command(index + 1, *args) + "\n"
            except TypeError:
                print(f"[ERR] Invalid command arguments: {args}")
                continue
            continue
        content += line

    dst.parent.mkdir(parents=True, exist_ok=True)
    dst.write_text(content)


def get_path_from_str(str_path: str) -> Optional[Path]:
    path = Path(str_path)
    if path.exists():
        return path
    path = Path(os.getcwd()) / str_path
    if path.exists():
        return path
    path = Path(__file__).parent / str_path
    if path.exists():
        return path
    return None


def log_error_then_exit(error: str) -> None:
    logger.error(error)
    exit(1)


def parse_args() -> Dict[str, Any]:
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "-s", "--src",
        type=str,
        required=True,
        help="sets the source file (requires file extension: '.t.md')"
    )

    parser.add_argument(
        "-d", "--dst",
        default=None,
        type=str,
        required=False,
        help="sets the destination file (default: None)"
    )

    result = vars(parser.parse_args())

    return result


if __name__ == "__main__":
    main(**parse_args())
