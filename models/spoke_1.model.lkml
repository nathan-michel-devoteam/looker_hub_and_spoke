include: "hub.model"

label: "Test Hub & Spoke - Spoke 1"

connection: "bigquery-looker-poc-2"


explore: +a_assortment_weekly_site_sku {
  label: "Assortment Weekly / Ref Produit - Spoke 1"
}

explore: repository_ref_product_denormalized {
  label: "Ref Produit - Spoke 1"
}
#06/02/2022
