
variable "boot_key_interval_iso" {
  type    = string
  default = "20ms"
}

variable "boot_wait_iso" {
  type    = string
  default = "90s"
}

variable "boot_keygroup_interval_iso" {
  type    = string
  default = "2s"
}

# Customize build
source "vmware-vmx" "macports_testvm" {
  display_name           = "{{build_name}}"
  vm_name                = "{{build_name}}"
  vmdk_name              = "{{build_name}}"
  ssh_username           = "packer"
  vnc_port_min           = "5999"
  vnc_port_max           = "5999"
#  vnc_disable_password   = true
  ssh_password           = "packer"
  skip_compaction        = true
  http_directory         = "http"
  source_path            = "../../packer-macos-11/output/macOS_11/macOS_11.vmx"
  shutdown_command       = "sudo shutdown -h now"
  output_directory       = "output/{{build_name}}"
  boot_wait              = var.boot_wait_iso
  boot_key_interval      = var.boot_key_interval_iso
  boot_keygroup_interval = var.boot_keygroup_interval_iso
#  boot_command = [
#    "packer<enter><wait15>",
#    "<leftSuperon><LeftShiftOn>u<LeftShiftOff><leftSuperoff>",
#    "terminal",
#    "<leftSuperon>o<LeftSuperOff><wait2>",
#    "curl -o test.mobileconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/testvm.mobileconfig<enter><wait5>",
#    "open test.mobileconfig<enter><wait>",
#    "open /System/Library/PreferencePanes/Profiles.prefPane<enter><wait2m>"
#  ]
  #  vmx_data = {
  #    "nvram" = "../../disablesip.nvram"
  #  }
  #  vmx_data_post = {
  #    "nvram" = "{{build_name}}.nvram"
  #  }
}

build {
  name    = "customize"
  sources = ["sources.vmware-vmx.macports_testvm"]

  provisioner "shell" {
    inline = ["csrutil status"]
  }

  #  provisioner "file" {
  #    sources     = [var.xcode_cli]
  #    destination = "~/"
  #  }

  provisioner "shell" {
    expect_disconnect   = true
    start_retry_timeout = "2h"
    #      environment_vars = [
    #        "SEEDING_PROGRAM=${var.seeding_program}"
    #      ]
    scripts = [
      "scripts/configure.sh"
    ]
  }
}
