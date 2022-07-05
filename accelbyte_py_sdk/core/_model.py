# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from re import Pattern
from typing import Any, Dict, List, Tuple, Union

from ._validators import validate_field


class Model:
    def __str__(self):
        return str(self.to_dict())

    def is_valid(
        self,
        check_required: bool = True,
        check_enum: bool = True,
        check_pattern: bool = True,
        recursive_check: bool = True,
        **kwargs
    ) -> Tuple[bool, Union[None, str]]:
        field_info = self.get_field_info()
        required_map = self.get_required_map() if check_required else None
        enum_map = self.get_enum_map() if check_enum else None
        pattern_map = self.get_pattern_map() if check_pattern else None
        for name in field_info:
            is_valid, error = validate_field(
                obj=self,
                name=name,
                alias_map=field_info,
                required_map=required_map,
                enum_map=enum_map,
                pattern_map=pattern_map,
            )
            if not is_valid:
                return False, error

            if recursive_check:
                kw = {
                    "check_required": check_required,
                    "check_enum": check_enum,
                    "check_pattern": check_pattern,
                    "recursive_check": recursive_check,
                }
                alias = field_info[name]
                value = getattr(self, alias) if hasattr(self, alias) else None
                if value:
                    if isinstance(value, list):
                        for x in value:
                            if not isinstance(x, Model):
                                break
                            is_valid, error = x.is_valid(**kw)
                            if not is_valid:
                                return False, error
                    else:
                        if isinstance(value, Model):
                            is_valid, error = value.is_valid(**kw)
                            if not is_valid:
                                return False, error
        return True, None

    # region overrideable members

    # noinspection PyMethodMayBeStatic
    def to_dict(self, include_empty: bool = False) -> dict:
        # pylint: disable=no-self-use, unused-argument
        return {}

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        raise NotImplementedError

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {}

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {}

    @staticmethod
    def get_pattern_map() -> Dict[str, Pattern]:
        return {}

    # endregion overrideable members
