<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" ToolsVersion="4.0">
  <PropertyGroup>
    <ProductVersion>3.5</ProductVersion>
    <RootNamespace>ServiceBusWithHTTP</RootNamespace>
    <ProjectGuid>{91fbc251-6d21-431d-a3e4-05cce979612a}</ProjectGuid>
    <OutputType>library</OutputType>
    <AssemblyName>ServiceBusWithHTTP</AssemblyName>
    <AllowGlobals>False</AllowGlobals>
    <AllowLegacyWith>False</AllowLegacyWith>
    <AllowLegacyOutParams>False</AllowLegacyOutParams>
    <AllowLegacyCreate>False</AllowLegacyCreate>
    <AllowUnsafeCode>False</AllowUnsafeCode>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <TargetFrameworkVersion>v4.0</TargetFrameworkVersion>
    <Name>ServiceBusWithHTTP</Name>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <Optimize>false</Optimize>
    <OutputPath>.\bin\Debug</OutputPath>
    <DefineConstants>DEBUG;TRACE;</DefineConstants>
    <GeneratePDB>True</GeneratePDB>
    <GenerateMDB>True</GenerateMDB>
    <EnableAsserts>True</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
    <Optimize>true</Optimize>
    <OutputPath>.\bin\Release</OutputPath>
    <GeneratePDB>False</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <EnableAsserts>False</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="mscorlib" />
    <Reference Include="Nancy">
      <HintPath>..\packages\Nancy.0.20.0\lib\net40\Nancy.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Nancy.Hosting.Self">
      <HintPath>..\packages\Nancy.Hosting.Self.0.20.0\lib\net40\Nancy.Hosting.Self.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="NServiceBus">
      <HintPath>..\packages\NServiceBus.Interfaces.4.0.4\lib\net40\NServiceBus.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="NServiceBus.Core">
      <HintPath>..\packages\NServiceBus.4.0.4\lib\net40\NServiceBus.Core.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="NServiceBus.Host">
      <HintPath>..\packages\NServiceBus.Host.4.0.4\lib\net40\NServiceBus.Host.exe</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="NServiceBus.Transports.RabbitMQ">
      <HintPath>..\packages\NServiceBus.RabbitMQ.1.0.4\lib\net40\NServiceBus.Transports.RabbitMQ.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="RabbitMQ.Client">
      <HintPath>..\packages\RabbitMQ.Client.3.0.4\lib\net30\RabbitMQ.Client.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.Data" />
    <Reference Include="System.Xml" />
    <Reference Include="System.Core">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Xml.Linq">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Data.DataSetExtensions">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
  </ItemGroup>
  <ItemGroup>
    <Compile Include="EndpointConfiguration.pas" />
    <Compile Include="Handlers\DomainHandler.pas" />
    <Compile Include="Modules\ServiceBusModule.pas" />
    <Compile Include="Properties\AssemblyInfo.pas" />
    <Compile Include="Service.pas" />
    <Compile Include="ServiceBusBootStrapper.pas" />
    <EmbeddedResource Include="Properties\Resources.resx">
      <Generator>ResXFileCodeGenerator</Generator>
    </EmbeddedResource>
    <Compile Include="Properties\Resources.Designer.pas" />
    <None Include="Properties\Settings.settings">
      <Generator>SettingsSingleFileGenerator</Generator>
    </None>
    <Compile Include="Properties\Settings.Designer.pas" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Handlers" />
    <Folder Include="Modules" />
    <Folder Include="Properties\" />
  </ItemGroup>
  <ItemGroup>
    <Content Include="App.config">
      <SubType>Content</SubType>
    </Content>
    <Content Include="InstallationDummyFile.txt">
      <SubType>Content</SubType>
    </Content>
    <Content Include="packages.config">
      <SubType>Content</SubType>
    </Content>
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\ServiceBus.Messages\ServiceBus.Messages.oxygene">
      <Name>ServiceBus.Messages</Name>
      <Project>{4b8dcc3c-aba8-416c-8a06-f0506da98842}</Project>
      <Private>True</Private>
      <HintPath>..\ServiceBus.Messages\bin\Debug\ServiceBus.Messages.dll</HintPath>
    </ProjectReference>
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Oxygene\RemObjects.Oxygene.Echoes.targets" />
  <PropertyGroup>
    <PreBuildEvent />
  </PropertyGroup>
</Project>