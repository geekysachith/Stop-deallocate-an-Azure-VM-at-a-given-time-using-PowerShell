Import-AzurePublishSettingsFile 'C:\Automation\Azure.publishsettings'
Select-AzureSubscription -SubscriptionId "1gf3f71d-c0g7-412f-aghr-6af042bb1231"
$vmname = 'myvm'
$vm = Get-AzureVM | Where-Object { $_.Name -eq $vmname }
Stop-AzureVM -ServiceName $vm.ServiceName -Name $vm.Name -Force