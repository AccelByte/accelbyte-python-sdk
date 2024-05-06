# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum

from ..models.order_creation_options import OrderCreationOptions


class EntitlementPlatformEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OCULUS = "Oculus"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    XBOX = "Xbox"


class PlatformEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OCULUS = "Oculus"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    XBOX = "Xbox"


class AdminOrderCreate(Model):
    """Admin order create (AdminOrderCreate)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        discounted_price: (discountedPrice) REQUIRED int

        item_id: (itemId) REQUIRED str

        quantity: (quantity) REQUIRED int

        region: (region) REQUIRED str

        currency_namespace: (currencyNamespace) OPTIONAL str

        discount_codes: (discountCodes) OPTIONAL List[str]

        entitlement_platform: (entitlementPlatform) OPTIONAL Union[str, EntitlementPlatformEnum]

        ext: (ext) OPTIONAL Dict[str, Any]

        language: (language) OPTIONAL str

        options: (options) OPTIONAL OrderCreationOptions

        platform: (platform) OPTIONAL Union[str, PlatformEnum]

        price: (price) OPTIONAL int

        return_url: (returnUrl) OPTIONAL str

        sandbox: (sandbox) OPTIONAL bool

        section_id: (sectionId) OPTIONAL str
    """

    # region fields

    currency_code: str  # REQUIRED
    discounted_price: int  # REQUIRED
    item_id: str  # REQUIRED
    quantity: int  # REQUIRED
    region: str  # REQUIRED
    currency_namespace: str  # OPTIONAL
    discount_codes: List[str]  # OPTIONAL
    entitlement_platform: Union[str, EntitlementPlatformEnum]  # OPTIONAL
    ext: Dict[str, Any]  # OPTIONAL
    language: str  # OPTIONAL
    options: OrderCreationOptions  # OPTIONAL
    platform: Union[str, PlatformEnum]  # OPTIONAL
    price: int  # OPTIONAL
    return_url: str  # OPTIONAL
    sandbox: bool  # OPTIONAL
    section_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> AdminOrderCreate:
        self.currency_code = value
        return self

    def with_discounted_price(self, value: int) -> AdminOrderCreate:
        self.discounted_price = value
        return self

    def with_item_id(self, value: str) -> AdminOrderCreate:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> AdminOrderCreate:
        self.quantity = value
        return self

    def with_region(self, value: str) -> AdminOrderCreate:
        self.region = value
        return self

    def with_currency_namespace(self, value: str) -> AdminOrderCreate:
        self.currency_namespace = value
        return self

    def with_discount_codes(self, value: List[str]) -> AdminOrderCreate:
        self.discount_codes = value
        return self

    def with_entitlement_platform(
        self, value: Union[str, EntitlementPlatformEnum]
    ) -> AdminOrderCreate:
        self.entitlement_platform = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> AdminOrderCreate:
        self.ext = value
        return self

    def with_language(self, value: str) -> AdminOrderCreate:
        self.language = value
        return self

    def with_options(self, value: OrderCreationOptions) -> AdminOrderCreate:
        self.options = value
        return self

    def with_platform(self, value: Union[str, PlatformEnum]) -> AdminOrderCreate:
        self.platform = value
        return self

    def with_price(self, value: int) -> AdminOrderCreate:
        self.price = value
        return self

    def with_return_url(self, value: str) -> AdminOrderCreate:
        self.return_url = value
        return self

    def with_sandbox(self, value: bool) -> AdminOrderCreate:
        self.sandbox = value
        return self

    def with_section_id(self, value: str) -> AdminOrderCreate:
        self.section_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "discounted_price"):
            result["discountedPrice"] = int(self.discounted_price)
        elif include_empty:
            result["discountedPrice"] = 0
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "currency_namespace"):
            result["currencyNamespace"] = str(self.currency_namespace)
        elif include_empty:
            result["currencyNamespace"] = ""
        if hasattr(self, "discount_codes"):
            result["discountCodes"] = [str(i0) for i0 in self.discount_codes]
        elif include_empty:
            result["discountCodes"] = []
        if hasattr(self, "entitlement_platform"):
            result["entitlementPlatform"] = str(self.entitlement_platform)
        elif include_empty:
            result["entitlementPlatform"] = Union[str, EntitlementPlatformEnum]()
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "options"):
            result["options"] = self.options.to_dict(include_empty=include_empty)
        elif include_empty:
            result["options"] = OrderCreationOptions()
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = Union[str, PlatformEnum]()
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        if hasattr(self, "section_id"):
            result["sectionId"] = str(self.section_id)
        elif include_empty:
            result["sectionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: str,
        discounted_price: int,
        item_id: str,
        quantity: int,
        region: str,
        currency_namespace: Optional[str] = None,
        discount_codes: Optional[List[str]] = None,
        entitlement_platform: Optional[Union[str, EntitlementPlatformEnum]] = None,
        ext: Optional[Dict[str, Any]] = None,
        language: Optional[str] = None,
        options: Optional[OrderCreationOptions] = None,
        platform: Optional[Union[str, PlatformEnum]] = None,
        price: Optional[int] = None,
        return_url: Optional[str] = None,
        sandbox: Optional[bool] = None,
        section_id: Optional[str] = None,
        **kwargs,
    ) -> AdminOrderCreate:
        instance = cls()
        instance.currency_code = currency_code
        instance.discounted_price = discounted_price
        instance.item_id = item_id
        instance.quantity = quantity
        instance.region = region
        if currency_namespace is not None:
            instance.currency_namespace = currency_namespace
        if discount_codes is not None:
            instance.discount_codes = discount_codes
        if entitlement_platform is not None:
            instance.entitlement_platform = entitlement_platform
        if ext is not None:
            instance.ext = ext
        if language is not None:
            instance.language = language
        if options is not None:
            instance.options = options
        if platform is not None:
            instance.platform = platform
        if price is not None:
            instance.price = price
        if return_url is not None:
            instance.return_url = return_url
        if sandbox is not None:
            instance.sandbox = sandbox
        if section_id is not None:
            instance.section_id = section_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminOrderCreate:
        instance = cls()
        if not dict_:
            return instance
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "discountedPrice" in dict_ and dict_["discountedPrice"] is not None:
            instance.discounted_price = int(dict_["discountedPrice"])
        elif include_empty:
            instance.discounted_price = 0
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "currencyNamespace" in dict_ and dict_["currencyNamespace"] is not None:
            instance.currency_namespace = str(dict_["currencyNamespace"])
        elif include_empty:
            instance.currency_namespace = ""
        if "discountCodes" in dict_ and dict_["discountCodes"] is not None:
            instance.discount_codes = [str(i0) for i0 in dict_["discountCodes"]]
        elif include_empty:
            instance.discount_codes = []
        if "entitlementPlatform" in dict_ and dict_["entitlementPlatform"] is not None:
            instance.entitlement_platform = str(dict_["entitlementPlatform"])
        elif include_empty:
            instance.entitlement_platform = Union[str, EntitlementPlatformEnum]()
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "options" in dict_ and dict_["options"] is not None:
            instance.options = OrderCreationOptions.create_from_dict(
                dict_["options"], include_empty=include_empty
            )
        elif include_empty:
            instance.options = OrderCreationOptions()
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = Union[str, PlatformEnum]()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        if "sectionId" in dict_ and dict_["sectionId"] is not None:
            instance.section_id = str(dict_["sectionId"])
        elif include_empty:
            instance.section_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AdminOrderCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AdminOrderCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[AdminOrderCreate, List[AdminOrderCreate], Dict[Any, AdminOrderCreate]]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "currencyCode": "currency_code",
            "discountedPrice": "discounted_price",
            "itemId": "item_id",
            "quantity": "quantity",
            "region": "region",
            "currencyNamespace": "currency_namespace",
            "discountCodes": "discount_codes",
            "entitlementPlatform": "entitlement_platform",
            "ext": "ext",
            "language": "language",
            "options": "options",
            "platform": "platform",
            "price": "price",
            "returnUrl": "return_url",
            "sandbox": "sandbox",
            "sectionId": "section_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currencyCode": True,
            "discountedPrice": True,
            "itemId": True,
            "quantity": True,
            "region": True,
            "currencyNamespace": False,
            "discountCodes": False,
            "entitlementPlatform": False,
            "ext": False,
            "language": False,
            "options": False,
            "platform": False,
            "price": False,
            "returnUrl": False,
            "sandbox": False,
            "sectionId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "entitlementPlatform": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Oculus",
                "Other",
                "Playstation",
                "Steam",
                "Xbox",
            ],
            "platform": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Oculus",
                "Other",
                "Playstation",
                "Steam",
                "Xbox",
            ],
        }

    # endregion static methods
