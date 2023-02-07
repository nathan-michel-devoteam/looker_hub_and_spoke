include: "hub.model"

label: "Hub & Spoke - Spoke 1"

connection: "bigquery-looker-poc-2"


explore: +a_assortment_weekly_site_sku {
  hidden: yes
  label: "Assortment Weekly / Ref Produit - Spoke 1"
}

explore: repository_ref_product_denormalized {
  hidden: yes
  label: "Ref Produit - Spoke 1"
}
#06/02/2022
