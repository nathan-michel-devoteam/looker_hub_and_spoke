# The name of this view in Looker is "Repository Ref Product Denormalized"
view: repository_ref_product_denormalized {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name:
  --Query_called_by_hub_and_spoke
  `arf-looker-poc.WORK.REPOSITORY_Ref_product_denormalized`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "All Sector" in Explore.

  dimension: all_sector {
    type: number
    sql: ${TABLE}.allSector ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_all_sector {
    type: sum
    sql: ${all_sector} ;;
  }

  measure: average_all_sector {
    type: average
    sql: ${all_sector} ;;
  }

  dimension: all_sector_label {
    type: string
    sql: ${TABLE}.allSectorLabel ;;
  }

  dimension: all_sector_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.allSectorSid ;;
  }

  dimension: category {
    type: number
    sql: ${TABLE}.category ;;
  }

  dimension: category_label {
    type: string
    sql: ${TABLE}.categoryLabel ;;
  }

  dimension: category_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.categorySid ;;
  }

  dimension: department {
    type: number
    sql: ${TABLE}.department ;;
  }

  dimension: department_label {
    type: string
    sql: ${TABLE}.departmentLabel ;;
  }

  dimension: department_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.departmentSid ;;
  }

  dimension: ecological_tax {
    type: number
    sql: ${TABLE}.ecologicalTax ;;
  }

  dimension: family {
    type: number
    sql: ${TABLE}.family ;;
  }

  dimension: family_label {
    type: string
    sql: ${TABLE}.familyLabel ;;
  }

  dimension: family_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.familySid ;;
  }

  dimension: is_active_product {
    type: yesno
    sql: ${TABLE}.isActiveProduct ;;
  }

  dimension: is_bio_product {
    type: yesno
    sql: ${TABLE}.isBioProduct ;;
  }

  dimension: is_first_price_product {
    type: yesno
    sql: ${TABLE}.isFirstPriceProduct ;;
  }

  dimension: is_format_promo_product {
    type: yesno
    sql: ${TABLE}.isFormatPromoProduct ;;
  }

  dimension: is_local_product {
    type: yesno
    sql: ${TABLE}.isLocalProduct ;;
  }

  dimension: is_national_brand_product {
    type: yesno
    sql: ${TABLE}.isNationalBrandProduct ;;
  }

  dimension: is_original_brand_product {
    type: yesno
    sql: ${TABLE}.isOriginalBrandProduct ;;
  }

  dimension: item {
    type: number
    sql: ${TABLE}.item ;;
  }

  dimension: item_label {
    type: string
    sql: ${TABLE}.itemLabel ;;
  }

  dimension: item_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.itemSid ;;
  }

  dimension: main_ean {
    type: string
    sql: ${TABLE}.mainEan ;;
  }

  dimension: market {
    type: number
    sql: ${TABLE}.market ;;
  }

  dimension: market_label {
    type: string
    sql: ${TABLE}.marketLabel ;;
  }

  dimension: market_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.marketSid ;;
  }

  dimension: module {
    type: number
    sql: ${TABLE}.module ;;
  }

  dimension: module_label {
    type: string
    sql: ${TABLE}.moduleLabel ;;
  }

  dimension: module_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.moduleSid ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: product_brand {
    type: number
    sql: ${TABLE}.productBrand ;;
  }

  dimension: product_brand_label {
    type: string
    sql: ${TABLE}.productBrandLabel ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: product_creation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.productCreationDate ;;
  }

  dimension: product_depth {
    type: number
    sql: ${TABLE}.productDepth ;;
  }

  dimension_group: product_epuration {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.productEpurationDate ;;
  }

  dimension: product_expiration_date {
    type: string
    sql: ${TABLE}.productExpirationDate ;;
  }

  dimension: product_gross_weight {
    type: number
    sql: ${TABLE}.productGrossWeight ;;
  }

  dimension: product_height {
    type: number
    sql: ${TABLE}.productHeight ;;
  }

  dimension: product_label_complement {
    type: string
    sql: ${TABLE}.productLabelComplement ;;
  }

  dimension: product_nature {
    type: string
    sql: ${TABLE}.productNature ;;
  }

  dimension: product_nature_label {
    type: string
    sql: ${TABLE}.productNatureLabel ;;
  }

  dimension: product_net_weight {
    type: number
    sql: ${TABLE}.productNetWeight ;;
  }

  dimension_group: product_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.productStartDate ;;
  }

  dimension: product_status {
    type: string
    sql: ${TABLE}.productStatus ;;
  }

  dimension_group: product_stop {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.productStopDate ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.productType ;;
  }

  dimension: product_type_label {
    type: string
    sql: ${TABLE}.productTypeLabel ;;
  }

  dimension: product_typology {
    type: string
    sql: ${TABLE}.productTypology ;;
  }

  dimension: product_typology_label {
    type: string
    sql: ${TABLE}.productTypologyLabel ;;
  }

  dimension: product_width {
    type: number
    sql: ${TABLE}.productWidth ;;
  }

  dimension: quantity_per_uom {
    type: number
    sql: ${TABLE}.quantityPerUom ;;
  }

  dimension: sector {
    type: number
    sql: ${TABLE}.sector ;;
  }

  dimension: sector2001 {
    type: number
    sql: ${TABLE}.sector2001 ;;
  }

  dimension: sector2001_label {
    type: string
    sql: ${TABLE}.sector2001Label ;;
  }

  dimension: sector2001_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sector2001Sid ;;
  }

  dimension: sector_label {
    type: string
    sql: ${TABLE}.sectorLabel ;;
  }

  dimension: sector_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sectorSid ;;
  }

  dimension: site_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.siteSid ;;
  }

  dimension: sku {
    type: number
    sql: ${TABLE}.sku ;;
  }

  dimension: sku_label {
    type: string
    sql: ${TABLE}.skuLabel ;;
  }

  dimension: sku_shop_label {
    type: string
    sql: ${TABLE}.skuShopLabel ;;
  }

  dimension: sku_short_label {
    type: string
    sql: ${TABLE}.skuShortLabel ;;
  }

  dimension: sku_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.skuSid ;;
  }

  dimension: univers {
    type: number
    sql: ${TABLE}.univers ;;
  }

  dimension: univers_label {
    type: string
    sql: ${TABLE}.universLabel ;;
  }

  dimension: univers_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.universSid ;;
  }

  dimension: uom_type_code {
    type: string
    sql: ${TABLE}.uomTypeCode ;;
  }

  dimension: vat_rate {
    type: number
    sql: ${TABLE}.vatRate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
