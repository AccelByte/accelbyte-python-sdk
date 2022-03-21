# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Dict


class Model:

    def __str__(self):
        return str(self.to_dict())

    # region overrideable members

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use, disable=unused-argument
        return True

    # noinspection PyMethodMayBeStatic
    def to_dict(self, include_empty: bool = False) -> dict:
        # pylint: no-self-use, disable=unused-argument
        return {}

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        raise NotImplementedError

    # endregion overrideable members
