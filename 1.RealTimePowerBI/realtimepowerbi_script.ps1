$templateFile = "realtimepowerbi_jobtemplate.json"
$parameterFile="realtimepowerbi_jobtemplate.parameters.json"
New-AzResourceGroup `
  -Name spatialanalsis-sample `
  -Location "East US"
New-AzResourceGroupDeployment `
  -Name sa-realtimepowerbi `
  -ResourceGroupName spatialanalasis-sample `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile