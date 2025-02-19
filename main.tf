module "rss_name" {
  source = "./rssgp"
  loc    = "westeurope"

}

output "rgp_output_name" {
  value = module.rss_name.rgp_name_output
}

module "stracc_creation" {
  source           = "./stracc"
  rssgp_name       = module.rss_name.rgp_name_output
  rss_loc_name     = module.rss_name.rgp_loc_output
  storage_acc_name = "statsvrondemo"
}

output "storageaccountname_output" {
  value = module.stracc_creation.storageaccount_output
}