name 'chef_base_linux'
maintainer 'Daniel Jennings'
maintainer_email 'daniel.j.jennings@gmail.com'
license 'All Rights Reserved'
description 'Applies common linux packages and configuration'
long_description 'Applies common linux packages and configuration'
version '1.0.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
depends 'vim'
depends 'git'
depends 'pathogen'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/chef_base_linux/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/chef_base_linux'
