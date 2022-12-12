# Real Time Person Count Power BI Dashboard:

    Ingest insights from Azure Event Hub, Transfrom them in Azure Stream Analytics and Load them into a Real Time PowerBI Dashboard. This sample is implemented for the Person Count operation but can be easily modified to use the other Spatial Analasis Operations.


## Requirements

- Access to Azure account with permission to create Azure services
- Permission to install PowerShell components in your local computer
- A Power BI Pro license

You need around 30 minutes to deploy this solution.

>### 1 - Deploy Spatial Analysis
--



>### 2 - Azure Components

This solution combines the following Azure services:

- Event Hubs: collects real-time consumption data.
- Stream Analytics: aggregates the streaming data and makes it available for visualization.
- Power BI Realtime Database: ingest real time data and auto refresh.
- Power BI Dashboard: visualizes the real-time energy consumption and the forecast results.


>### 3 - Deploy ARM template via Powershell

This is the ARM template you are about to deploy:

Open: [ARM template location](1.RealTimePowerBI/realtimepowerbi_jobtemplate.json)

1. Before deploy ARM template file, you need to replace some values in the ARM template parameters file. 

Open: [Parameters File](1.RealTimePowerBI/realtimepowerbi_jobtemplate.parameters.filled.json)

- StreamAnalytics_JobName
- EventHub_serviceBusNamespace
- EventHub_eventHubName
- EventHub_consumerGroupName
- PowerBI_groupName
- PowerBI_groupId
- PowerBI_dataSet
- PowerBI_table

<br>
2. Once you replace the values with your own information, use the provided powershell script for the deployment: 

Open: [Powershell Script](1.RealTimePowerBI/realtimepowerbi_script.ps1)

3. Once deployment is done, the data will start flowing into the real time PowerBI dashboard

>>>Architecture Diagram

>### 4 - Deploy Arm Template via Azure Portral

You can also deploy the ARM template via this template

<img src="https://aka.ms/deploytoazurebutton"/>
[Deploy to Azure](https://aka.ms/deploytoazurebutton)

>### 5 - Power BI

Once deployment is done, the data will start flowing into the real time PowerBI dashboard. Now you can set up the Dashboard.

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
