# Define the database connection to be used for this model.
connection: "bigquery-looker-poc-1"

# include all the views
include: "/views/**/*.view"

label: "Hub & Spoke - Hub"

explore: a_assortment_weekly_site_sku {
  hidden: yes
  label: "Assortment Weekly / Ref Produit - Hub"
  join: repository_ref_product_denormalized {
    type: left_outer
    relationship: many_to_one
    sql_on: ${a_assortment_weekly_site_sku.sku_sid} = ${repository_ref_product_denormalized.sku_sid} ;;
    fields: ["sku_sid","family", "market_label","univers_label"]
  }
}



#SELECT timestamp, totalBilledBytes, usdCostAmount, user, query
#  FROM `arf-looker-poc.LOG.F_bigqueryQueriesLive`
# where day = current_date()
# order by timestamp desc
# LIMIT 10


# Gérer la sécurité d'accès via les Roles / model sets
