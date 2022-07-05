import re

from typing import Any, Dict, List, Optional, Tuple


def validate_field(
    obj: Any,
    name: str,
    alias_map: Optional[Dict[str, str]] = None,
    required_map: Optional[Dict[str, bool]] = None,
    enum_map: Optional[Dict[str, List[Any]]] = None,
    pattern_map: Optional[Dict[str, re.Pattern]] = None,
    **kwargs,
) -> Tuple[bool, Optional[str]]:
    if alias_map is not None:
        alias = alias_map.get(name)
        if not alias:
            return False, f"Unrecognized field '{name}'."
    else:
        alias = name

    value = getattr(obj, alias) if hasattr(obj, alias) else None

    if required_map is not None:
        is_required = required_map.get(name, False)
        if is_required and value is None:
            return False, f"Required value '{alias}' was not set."

    if value is not None:
        is_value_list = isinstance(value, list)

        if enum_map is not None:
            enum_values = enum_map.get(name, [])
            if enum_values:
                if is_value_list:
                    is_valid = all(x in enum_values for x in value)
                    if not is_valid:
                        return (
                            False,
                            f"Some values in '{value}' are not part of the enum set '{enum_values}'.",
                        )
                else:
                    is_valid = value in enum_values
                    if not is_valid:
                        return (
                            False,
                            f"Value '{value}' is not part of the enum set '{enum_values}'.",
                        )

        if pattern_map is not None:
            pattern = pattern_map.get(name, None)
            if pattern:
                if is_value_list:
                    is_valid = all(pattern.match(x) for x in value)
                    if not is_valid:
                        return (
                            False,
                            f"Some values in '{value}' do not match the pattern '{pattern.pattern}'.",
                        )
                else:
                    is_valid = pattern.match(value)
                    if not is_valid:
                        return (
                            False,
                            f"Value '{value}' do not match the pattern '{pattern.pattern}'.",
                        )

    return True, None
