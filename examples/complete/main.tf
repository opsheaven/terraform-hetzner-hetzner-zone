module "this" {
  source = "../../"

  zone = {
    name = "opsheaven.space"
    ttl  = 3600
    records = {
      catch_all_record = {
        name  = "@"
        type  = "A"
        value = "66.96.162.144"
      }
      default_storage_box_alias = {
        name  = "storage"
        type  = "CNAME"
        value = "u393136.your-storagebox.de."
      }
      GOOGLE_MX_1 = {
        name  = "@"
        type  = "MX"
        value = "1 ASPMX.L.GOOGLE.COM."
      }
      GOOGLE_MX_2 = {
        name  = "@"
        type  = "MX"
        value = "5 ALT1.ASPMX.L.GOOGLE.COM."
      }
      GOOGLE_MX_3 = {
        name  = "@"
        type  = "MX"
        value = "5 ALT2.ASPMX.L.GOOGLE.COM."
      }
      GOOGLE_MX_4 = {
        name  = "@"
        type  = "MX"
        value = "10 ALT3.ASPMX.L.GOOGLE.COM."
      }
      GOOGLE_MX_5 = {
        name  = "@"
        type  = "MX"
        value = "10 ALT3.ASPMX.L.GOOGLE.COM."
      }
    }
  }
}
