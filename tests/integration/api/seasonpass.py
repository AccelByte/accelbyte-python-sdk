import os
from uuid import uuid4
from datetime import datetime, timedelta


from accelbyte_py_sdk.api.platform.models.localization import Localization
from accelbyte_py_sdk.api.platform.models.region_data_item_dto import (
    CurrencyTypeEnum,
    RegionDataItemDTO,
)

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.platform import (
    create_store,
    list_stores,
    delete_store,
    create_category,
    create_item,
)
from accelbyte_py_sdk.api.seasonpass import (
    create_season,
    update_season,
    get_season,
    delete_season,
)
from accelbyte_py_sdk.api.platform.models.store_info import StoreInfo
from accelbyte_py_sdk.api.platform.models.store_create import StoreCreate
from accelbyte_py_sdk.api.platform.models.category_create import CategoryCreate
from accelbyte_py_sdk.api.platform.models.full_item_info import FullItemInfo
from accelbyte_py_sdk.api.platform.models.item_create import (
    EntitlementTypeEnum,
    ItemCreate,
    ItemTypeEnum,
    SeasonTypeEnum,
)
from accelbyte_py_sdk.api.seasonpass.models.season_create import SeasonCreate
from accelbyte_py_sdk.api.seasonpass.models.season_update import SeasonUpdate


class SeasonPassTestCase(IntegrationTestCase):
    namespace: str = os.environ.get("AB_NAMESPACE", "")
    storeTitle: str = "Python Extend SDK Season Store"

    def do_get_store(self) -> StoreInfo:
        result, error = list_stores(
            namespace=self.namespace,
        )
        self.assertIsNone(error, error)

        if len(result) > 0:
            for store_info in result:
                if not store_info.published:
                    return store_info

        body = (
            StoreCreate()
            .with_default_language("en-US")
            .with_default_region("US")
            .with_title(self.storeTitle)
            .with_description(self.storeTitle)
        )

        result, error = create_store(namespace=self.namespace, body=body)
        return result

    def do_get_store_tier_item(self, store_id: str) -> FullItemInfo:
        # create store category

        categoryPath = f'/{str(uuid4()).replace("-", "")}'
        body = (
            CategoryCreate()
            .with_category_path(categoryPath)
            .with_localization_display_names({"en-US": categoryPath})
        )
        result, error = create_category(
            namespace=self.namespace, store_id=store_id, body=body
        )
        self.assertIsNone(error, error)

        # create store item (season tier)

        itemName = "Item_SEASON_Tier1"
        itemPrice = 0
        currencyCode = "USD"
        body = (
            ItemCreate()
            .with_category_path(categoryPath)
            .with_entitlement_type(EntitlementTypeEnum.DURABLE)
            .with_item_type(ItemTypeEnum.SEASON)
            .with_localizations({"en-US": Localization().with_title(itemName)})
            .with_name(itemName)
            .with_region_data(
                {
                    "US": [
                        RegionDataItemDTO()
                        .with_currency_code(currencyCode)
                        .with_currency_namespace(self.namespace)
                        .with_currency_type(CurrencyTypeEnum.REAL)
                        .with_price(itemPrice)
                    ]
                }
            )
            .with_season_type(SeasonTypeEnum.TIER)
        )
        result, error = create_item(
            namespace=self.namespace, store_id=store_id, body=body
        )
        self.assertIsNone(error, error)

        return result

    def do_delete_all_draft_stores(self):
        result, error = list_stores(
            namespace=self.namespace,
        )
        self.assertIsNone(error, error)
        for store_info in result:
            if not store_info.published:
                _, error = delete_store(store_id=store_info.store_id)
                self.assertIsNone(error, error)

    # region test:season_crud

    def test_season_crud(self):
        # arrange - store

        seasonStore = self.do_get_store()

        # arrange - store tier item id

        seasonStoreItemTier = self.do_get_store_tier_item(seasonStore.store_id)

        # act - create season

        seasonName = "PythonServerSDKTestSeason"
        seasonRequiredExp = 100
        timeNow = datetime.now()
        body = (
            SeasonCreate()
            .with_name(seasonName)
            .with_start(timeNow.replace(microsecond=0).isoformat())
            .with_end((timeNow + timedelta(days=7)).replace(microsecond=0).isoformat())
            .with_default_required_exp(seasonRequiredExp)
            .with_draft_store_id(seasonStore.store_id)
            .with_tier_item_id(seasonStoreItemTier.item_id)
            .with_localizations(
                {"en": Localization().with_title("English").with_description("English")}
            )
        )
        result, error = create_season(namespace=self.namespace, body=body)

        # assert - create season

        self.assertIsNone(error, error)
        self.assertIsNotNone(result)

        # act - update season

        seasonId = result.id_
        updatedSeasonName = "UpdatedPythonServerSDKTestSeason"
        body = SeasonUpdate().with_name(updatedSeasonName)
        result, error = update_season(
            namespace=self.namespace, season_id=seasonId, body=body
        )

        # assert - update season

        self.assertIsNone(error, error)
        self.assertIsNotNone(result)

        # act - get season

        result, error = get_season(namespace=self.namespace, season_id=seasonId)

        # assert - get season

        self.assertIsNone(error, error)
        self.assertIsNotNone(result)
        self.assertEqual(updatedSeasonName, result.name)

        # act - delete season

        result, error = delete_season(namespace=self.namespace, season_id=seasonId)

        # assert - delete season

        self.assertIsNone(error, error)

    def tearDown(self) -> None:
        self.do_delete_all_draft_stores()

    # endregion test:season_crud

    # end of file
