# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class AggregateEnum(StrEnum):
    ADYEN = "ADYEN"
    XSOLLA = "XSOLLA"


class SpecialsEnum(StrEnum):
    ADYEN = "ADYEN"
    ALIPAY = "ALIPAY"
    CHECKOUT = "CHECKOUT"
    PAYPAL = "PAYPAL"
    STRIPE = "STRIPE"
    WALLET = "WALLET"
    WXPAY = "WXPAY"
    XSOLLA = "XSOLLA"


class PaymentProviderConfigEdit(Model):
    """A DTO object for creating/updating payment provider config (PaymentProviderConfigEdit)

    Properties:
        namespace: (namespace) REQUIRED str

        region: (region) REQUIRED str

        aggregate: (aggregate) OPTIONAL Union[str, AggregateEnum]

        sandbox_tax_jar_api_token: (sandboxTaxJarApiToken) OPTIONAL str

        specials: (specials) OPTIONAL List[Union[str, SpecialsEnum]]

        tax_jar_api_token: (taxJarApiToken) OPTIONAL str

        tax_jar_enabled: (taxJarEnabled) OPTIONAL bool

        use_global_tax_jar_api_token: (useGlobalTaxJarApiToken) OPTIONAL bool
    """

    # region fields

    namespace: str  # REQUIRED
    region: str  # REQUIRED
    aggregate: Union[str, AggregateEnum]  # OPTIONAL
    sandbox_tax_jar_api_token: str  # OPTIONAL
    specials: List[Union[str, SpecialsEnum]]  # OPTIONAL
    tax_jar_api_token: str  # OPTIONAL
    tax_jar_enabled: bool  # OPTIONAL
    use_global_tax_jar_api_token: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> PaymentProviderConfigEdit:
        self.namespace = value
        return self

    def with_region(self, value: str) -> PaymentProviderConfigEdit:
        self.region = value
        return self

    def with_aggregate(
        self, value: Union[str, AggregateEnum]
    ) -> PaymentProviderConfigEdit:
        self.aggregate = value
        return self

    def with_sandbox_tax_jar_api_token(self, value: str) -> PaymentProviderConfigEdit:
        self.sandbox_tax_jar_api_token = value
        return self

    def with_specials(
        self, value: List[Union[str, SpecialsEnum]]
    ) -> PaymentProviderConfigEdit:
        self.specials = value
        return self

    def with_tax_jar_api_token(self, value: str) -> PaymentProviderConfigEdit:
        self.tax_jar_api_token = value
        return self

    def with_tax_jar_enabled(self, value: bool) -> PaymentProviderConfigEdit:
        self.tax_jar_enabled = value
        return self

    def with_use_global_tax_jar_api_token(
        self, value: bool
    ) -> PaymentProviderConfigEdit:
        self.use_global_tax_jar_api_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "aggregate"):
            result["aggregate"] = str(self.aggregate)
        elif include_empty:
            result["aggregate"] = Union[str, AggregateEnum]()
        if hasattr(self, "sandbox_tax_jar_api_token"):
            result["sandboxTaxJarApiToken"] = str(self.sandbox_tax_jar_api_token)
        elif include_empty:
            result["sandboxTaxJarApiToken"] = ""
        if hasattr(self, "specials"):
            result["specials"] = [str(i0) for i0 in self.specials]
        elif include_empty:
            result["specials"] = []
        if hasattr(self, "tax_jar_api_token"):
            result["taxJarApiToken"] = str(self.tax_jar_api_token)
        elif include_empty:
            result["taxJarApiToken"] = ""
        if hasattr(self, "tax_jar_enabled"):
            result["taxJarEnabled"] = bool(self.tax_jar_enabled)
        elif include_empty:
            result["taxJarEnabled"] = False
        if hasattr(self, "use_global_tax_jar_api_token"):
            result["useGlobalTaxJarApiToken"] = bool(self.use_global_tax_jar_api_token)
        elif include_empty:
            result["useGlobalTaxJarApiToken"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        region: str,
        aggregate: Optional[Union[str, AggregateEnum]] = None,
        sandbox_tax_jar_api_token: Optional[str] = None,
        specials: Optional[List[Union[str, SpecialsEnum]]] = None,
        tax_jar_api_token: Optional[str] = None,
        tax_jar_enabled: Optional[bool] = None,
        use_global_tax_jar_api_token: Optional[bool] = None,
    ) -> PaymentProviderConfigEdit:
        instance = cls()
        instance.namespace = namespace
        instance.region = region
        if aggregate is not None:
            instance.aggregate = aggregate
        if sandbox_tax_jar_api_token is not None:
            instance.sandbox_tax_jar_api_token = sandbox_tax_jar_api_token
        if specials is not None:
            instance.specials = specials
        if tax_jar_api_token is not None:
            instance.tax_jar_api_token = tax_jar_api_token
        if tax_jar_enabled is not None:
            instance.tax_jar_enabled = tax_jar_enabled
        if use_global_tax_jar_api_token is not None:
            instance.use_global_tax_jar_api_token = use_global_tax_jar_api_token
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaymentProviderConfigEdit:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "aggregate" in dict_ and dict_["aggregate"] is not None:
            instance.aggregate = str(dict_["aggregate"])
        elif include_empty:
            instance.aggregate = Union[str, AggregateEnum]()
        if (
            "sandboxTaxJarApiToken" in dict_
            and dict_["sandboxTaxJarApiToken"] is not None
        ):
            instance.sandbox_tax_jar_api_token = str(dict_["sandboxTaxJarApiToken"])
        elif include_empty:
            instance.sandbox_tax_jar_api_token = ""
        if "specials" in dict_ and dict_["specials"] is not None:
            instance.specials = [str(i0) for i0 in dict_["specials"]]
        elif include_empty:
            instance.specials = []
        if "taxJarApiToken" in dict_ and dict_["taxJarApiToken"] is not None:
            instance.tax_jar_api_token = str(dict_["taxJarApiToken"])
        elif include_empty:
            instance.tax_jar_api_token = ""
        if "taxJarEnabled" in dict_ and dict_["taxJarEnabled"] is not None:
            instance.tax_jar_enabled = bool(dict_["taxJarEnabled"])
        elif include_empty:
            instance.tax_jar_enabled = False
        if (
            "useGlobalTaxJarApiToken" in dict_
            and dict_["useGlobalTaxJarApiToken"] is not None
        ):
            instance.use_global_tax_jar_api_token = bool(
                dict_["useGlobalTaxJarApiToken"]
            )
        elif include_empty:
            instance.use_global_tax_jar_api_token = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentProviderConfigEdit]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentProviderConfigEdit]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PaymentProviderConfigEdit,
        List[PaymentProviderConfigEdit],
        Dict[Any, PaymentProviderConfigEdit],
    ]:
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
            "namespace": "namespace",
            "region": "region",
            "aggregate": "aggregate",
            "sandboxTaxJarApiToken": "sandbox_tax_jar_api_token",
            "specials": "specials",
            "taxJarApiToken": "tax_jar_api_token",
            "taxJarEnabled": "tax_jar_enabled",
            "useGlobalTaxJarApiToken": "use_global_tax_jar_api_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "region": True,
            "aggregate": False,
            "sandboxTaxJarApiToken": False,
            "specials": False,
            "taxJarApiToken": False,
            "taxJarEnabled": False,
            "useGlobalTaxJarApiToken": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "aggregate": ["ADYEN", "XSOLLA"],
            "specials": [
                "ADYEN",
                "ALIPAY",
                "CHECKOUT",
                "PAYPAL",
                "STRIPE",
                "WALLET",
                "WXPAY",
                "XSOLLA",
            ],
        }

    # endregion static methods
