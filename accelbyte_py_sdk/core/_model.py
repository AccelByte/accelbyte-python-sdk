from typing import Dict


class Model:

    def __str__(self):
        return str(self.to_dict())

    # region overrideable members

    # noinspection PyMethodMayBeStatic
    def to_dict(self, include_empty: bool = False) -> dict:
        # pylint: no-self-use, disable=unused-argument
        return {}

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        raise NotImplementedError

    # endregion overrideable members
