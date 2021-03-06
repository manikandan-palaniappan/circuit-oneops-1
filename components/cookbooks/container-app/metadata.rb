name             "Container-app"
description      "Container application model"
version          "0.1"
maintainer       "OneOps"
maintainer_email "support@oneops.com"
license          "Apache License, Version 2.0"

grouping 'default',
  :access => "global",
  :packages => [ 'base', 'mgmt.catalog', 'mgmt.manifest', 'catalog', 'manifest' ]

grouping 'bom',
  :access => "global",
  :packages => [ 'bom' ]
 
attribute 'deployment_yaml',
  :description => "Deployment YAML",
  :data_type => "text",
  :format => {
    :help => 'Deployment YAML to model an app: replicas, containers, etc',
    :category => '1.Content',
    :order => 1
  }

attribute 'app_url',
  :description => "Deployment URL",
  :grouping => 'bom',
  :format => {
    :help => 'URL to your app',
    :category => '1.Runtime',
    :order => 1
  }
    
recipe "repair", "Repair"
