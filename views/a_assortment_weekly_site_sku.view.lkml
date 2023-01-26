# The name of this view in Looker is "A Assortment Weekly Site SKU"
view: a_assortment_weekly_site_sku {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `arf-looker-poc.ASSORTMENT.A_assortment_weeklySiteSku`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Assortment Cluster Label" in Explore.

  dimension: assortment_cluster_label {
    type: string
    sql: ${TABLE}.assortmentClusterLabel ;;
  }

  dimension: assortment_cluster_number {
    type: string
    sql: ${TABLE}.assortmentClusterNumber ;;
  }

  dimension: commercial_contexte_code {
    type: string
    sql: ${TABLE}.commercialContexteCode ;;
  }

  dimension: gamme_level_product {
    type: string
    sql: ${TABLE}.gammeLevelProduct ;;
  }

  dimension: gamme_level_site {
    type: string
    sql: ${TABLE}.gammeLevelSite ;;
  }

  dimension: is_auto_supply_product {
    type: number
    sql: ${TABLE}.isAutoSupplyProduct ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_auto_supply_product {
    type: sum
    sql: ${is_auto_supply_product} ;;
  }

  measure: average_is_auto_supply_product {
    type: average
    sql: ${is_auto_supply_product} ;;
  }

  dimension: is_moduled {
    type: yesno
    sql: ${TABLE}.isModuled ;;
  }

  dimension: is_new {
    type: yesno
    sql: ${TABLE}.isNew ;;
  }

  dimension: is_picked {
    type: yesno
    sql: ${TABLE}.isPicked ;;
  }

  dimension: is_stock_maximum_quantity {
    type: number
    sql: ${TABLE}.isStockMaximumQuantity ;;
  }

  dimension: is_stock_merchant_quantity {
    type: number
    sql: ${TABLE}.isStockMerchantQuantity ;;
  }

  dimension: isprimary_key_erase {
    type: yesno
    sql: ${TABLE}.isprimaryKeyErase ;;
  }

  dimension: isto_be_delivered {
    type: number
    sql: ${TABLE}.istoBeDelivered ;;
  }

  dimension: site_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.siteSid ;;
  }

  dimension: site_type {
    type: string
    sql: ${TABLE}.siteType ;;
  }

  dimension: sku_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.skuSid ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
