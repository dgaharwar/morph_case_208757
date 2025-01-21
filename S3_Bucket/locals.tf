locals {

# Common tags to be assigned to all AWS resources and Azure Resource Groups

  default_tags = {
    Name = "<%=instance.displayName%>"
    PrimaryContact = "<%=instance.metadata.PrimaryContact%>"
    SecondaryContact = "<%= instance.metadata.SecondaryContact%>"
    NotificationPDL = "<%= instance.metadata.NotificationPDL%>"
    ApplicationName = "<%= instance.metadata.AppInstanceID%>"
    Environment = "<%= instance.metadata.Environment%>"
    ITOwnerEmail = "<%= instance.metadata.NotificationPDL%>"
  }

# Common tags to be assigned to all Azure resources (App Name and ITOwner are inherited from the resource group level

  azure_resource_default_tags = {
    Name = "<%=instance.displayName%>"
    PrimaryContact = "<%=instance.metadata.PrimaryContact%>"
    SecondaryContact = "<%= instance.metadata.SecondaryContact%>"
    NotificationPDL = "<%= instance.metadata.NotificationPDL%>"
    Environment = "<%= instance.metadata.Environment%>"
  }

  instance_options = {
    name = "<%=instance.displayName%>"
    domainName = "<%=instance.domainName%>"
    securitygroups = "<%= instance.metadata.CloudSecurityGroup%>"
  }

  cloud_options = {
    region = "<%= instance.metadata.CloudRegion%>"
    account = "<%= instance.metadata.CloudAccount%>"
    rg_name = "<%= instance.metadata.ResourceGroupName%>"
    iam_user_name = "<%= instance.metadata.IAMUserName%>"
    azure_sku = "<%= instance.metadata.AzureSKU%>"
  }
}