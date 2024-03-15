# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

sample "build_ce_linux_amd64_deb" {
  attributes = global.sample_attributes

  subset "agent" {
    matrix {
      arch            = ["amd64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["ubuntu"]
      edition         = ["ce"]
    }
  }

  subset "smoke" {
    matrix {
      arch            = ["amd64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["ubuntu"]
      edition         = ["ce"]
    }
  }

  subset "proxy" {
    matrix {
      arch            = ["amd64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["ubuntu"]
      edition         = ["ce"]
    }
  }

  subset "upgrade" {
    matrix {
      arch            = ["amd64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["ubuntu"]
      edition         = ["ce"]
    }
  }
}

sample "build_ce_linux_arm64_deb" {
  attributes = global.sample_attributes

  subset "agent" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["ubuntu"]
      edition         = ["ce"]
    }
  }

  subset "smoke" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["ubuntu"]
      edition         = ["ce"]
    }
  }

  subset "proxy" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["ubuntu"]
      edition         = ["ce"]
    }
  }

  subset "upgrade" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["ubuntu"]
      edition         = ["ce"]
    }
  }
}

sample "build_ce_linux_arm64_rpm" {
  attributes = global.sample_attributes

  subset "agent" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["amzn2", "rhel", "sles"]
      edition         = ["ce"]
    }
  }

  subset "smoke" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["amzn2", "rhel", "sles"]
      edition         = ["ce"]
    }
  }

  subset "proxy" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["amzn2", "rhel", "sles"]
      edition         = ["ce"]
    }
  }

  subset "upgrade" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["amzn2", "rhel", "sles"]
      edition         = ["ce"]
    }
  }
}

sample "build_ce_linux_amd64_rpm" {
  attributes = global.sample_attributes

  subset "agent" {
    matrix {
      arch            = ["amd64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["amzn2", "leap", "rhel", "sles"]
      edition         = ["ce"]
    }
  }

  subset "smoke" {
    matrix {
      arch            = ["amd64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["amzn2", "leap", "rhel", "sles"]
      edition         = ["ce"]
    }
  }

  subset "proxy" {
    matrix {
      arch            = ["amd64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["amzn2", "leap", "rhel", "sles"]
      edition         = ["ce"]
    }
  }

  subset "upgrade" {
    matrix {
      arch            = ["amd64"]
      artifact_source = ["crt"]
      artifact_type   = ["package"]
      consul_edition  = ["ce"]
      distro          = ["amzn2", "leap", "rhel", "sles"]
      edition         = ["ce"]

      exclude {
        // Don't test from these versions in the build pipeline because of known issues
        // in those older versions.
        initial_version = ["1.8.12", "1.9.10", "1.10.11"]
      }
    }
  }
}

sample "build_ce_linux_amd64_zip" {
  attributes = global.sample_attributes

  subset "agent" {
    matrix {
      arch            = ["amd64"]
      artifact_type   = ["bundle"]
      artifact_source = ["crt"]
      consul_edition  = ["ce"]
      edition         = ["ce"]
    }
  }

  subset "smoke" {
    matrix {
      arch            = ["amd64"]
      artifact_type   = ["bundle"]
      artifact_source = ["crt"]
      consul_edition  = ["ce"]
      edition         = ["ce"]
    }
  }

  subset "proxy" {
    matrix {
      arch            = ["amd64"]
      artifact_type   = ["bundle"]
      artifact_source = ["crt"]
      consul_edition  = ["ce"]
      edition         = ["ce"]
    }
  }

  subset "upgrade" {
    matrix {
      arch            = ["amd64"]
      artifact_type   = ["bundle"]
      artifact_source = ["crt"]
      consul_edition  = ["ce"]
      edition         = ["ce"]
    }
  }
}

sample "build_ce_linux_arm64_zip" {
  attributes = global.sample_attributes

  subset "agent" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["bundle"]
      consul_edition  = ["ce"]
      edition         = ["ce"]

      # arm64 AMIs not offered for all versions of Leap
      exclude {
        distro = ["leap"]
      }
    }
  }

  subset "smoke" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["bundle"]
      consul_edition  = ["ce"]
      edition         = ["ce"]

      # arm64 AMIs not offered for all versions of Leap
      exclude {
        distro = ["leap"]
      }
    }
  }

  subset "proxy" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["bundle"]
      consul_edition  = ["ce"]
      edition         = ["ce"]

      # arm64 AMIs not offered for all versions of Leap
      exclude {
        distro = ["leap"]
      }
    }
  }

  subset "upgrade" {
    matrix {
      arch            = ["arm64"]
      artifact_source = ["crt"]
      artifact_type   = ["bundle"]
      consul_edition  = ["ce"]
      edition         = ["ce"]

      # arm64 AMIs not offered for all versions of Leap
      exclude {
        distro = ["leap"]
      }
    }
  }
}
