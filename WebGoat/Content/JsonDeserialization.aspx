<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Master-Pages/Site.Master" AutoEventWireup="true" CodeBehind="JsonDeserialization.aspx.cs" Inherits="OWASP.WebGoat.NET.Content.JsonDeserialization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">

    <%--
        Throw in some hints here. Many will have a hard time figuring it out:
    --%>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceholder" runat="server">

    <h1 class="title-regular-4 clearfix">JSON unsafe deserialization in .NET</h1>

    <p>Try running some code from Json ;)</p>
 
    <p><asp:TextBox ID="txtBoxJsonInput" runat="server" TextMode="MultiLine" Width="400px" Height="100px" 
                    Text="{
  &quot;$type&quot;: &quot;System.Data.DataColumn, System.Data&quot;,
  &quot;AllowDBNull&quot;: true,
  &quot;AutoIncrement&quot;: false,
  &quot;AutoIncrementSeed&quot;: 0,
  &quot;AutoIncrementStep&quot;: 1,
  &quot;Caption&quot;: &quot;catNumber&quot;,
  &quot;ColumnName&quot;: &quot;catNumber&quot;,
  &quot;Prefix&quot;: &quot;&quot;,
  &quot;DataType&quot;: &quot;System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089&quot;,
  &quot;DateTimeMode&quot;: 3,
  &quot;DefaultValue&quot;: null,
  &quot;Expression&quot;: &quot;&quot;,
  &quot;ExtendedProperties&quot;: {
    &quot;$type&quot;: &quot;System.Data.PropertyCollection, System.Data&quot;
  },
  &quot;MaxLength&quot;: -1,
  &quot;Namespace&quot;: &quot;&quot;,
  &quot;Ordinal&quot;: 0,
  &quot;ReadOnly&quot;: false,
  &quot;Table&quot;: [
    {
      &quot;catNumber&quot;: 1,
      &quot;catName&quot;: &quot;Gold Coins&quot;,
      &quot;catDesc&quot;: &quot;A gold coin is a coin made mostly or entirely of gold. Gold has been used for coins practically since the invention of coinage, originally because of gold's intrinsic value. In modern times, most gold coins are intended either to be sold to collectors, or to be used as bullion coins—coins whose nominal value is irrelevant and which serve primarily as a method of investing in gold.  Gold has been used as money for many reasons. It is fungible, with a low spread between the prices to buy and sell. Gold is also easily transportable, as it has a high value to weight ratio, compared to other commodities, such as silver. Gold can be divided into smaller units, without destroying its value; it can also be melted into ingots, and re-coined. The density of gold is higher than most other metals, making it difficult to pass counterfeits. Gold is extremely unreactive. The scarcity of gold stabilizes its value.&quot;
    },
    {
      &quot;catNumber&quot;: 2,
      &quot;catName&quot;: &quot;Silver Coins&quot;,
      &quot;catDesc&quot;: &quot;Silver coins are possibly the oldest mass produced form of coinage. Silver has been used as a coinage metal since the times of the Greeks. Their silver drachmas were popular trade coins.  As with all collectible coins, many factors determine the value of a collectible silver coin, such as its rarity, demand, condition and the number originally minted. Ancient silver coins coveted by collectors include the Denarius and Miliarense, while more recent collectible silver coins include the Morgan Dollar and the Spanish Milled Dollar.  Other than collector's silver coins, silver bullion coins are popular among people who desire a hedge against currency inflation or store of value. Silver has an international currency symbol of XAG under ISO 4217.  Before 1797, British pennies used to be made out of silver while the ancient Persians used silver coins between 612-330 BC.&quot;
    },
    {
      &quot;catNumber&quot;: 3,
      &quot;catName&quot;: &quot;Platinum Coins&quot;,
      &quot;catDesc&quot;: &quot;Platinum coins are a form of currency. Platinum has an international currency symbol under ISO 4217 of XPT. The issues of legitimate platinum coins were initiated by Spain in Spanish-colonized America in the 18th century and continued by the Russian Empire in the 19th century. As a form of currency, these coins proved to be impractical: platinum resembles many less expensive metals, and, unlike the more malleable and ductile silver and gold, it is very difficult to work. Several commemorative coin sets have been issued starting from 1978 and became popular among coin collectors. The major platinum bullion coins include the American Platinum Eagle, the Canadian Platinum Maple Leaf, the Australian Platinum Koala, the Isle of Man Noble, the Chinese Platinum Panda and several series by the Soviet Union and later by the Russian Federation. The production of most platinum coins stopped around 2005 except for the American Platinum Eagle – one of the world's most popular platinum coins – which was still being produced in 2009.&quot;
    },
    {
      &quot;catNumber&quot;: 4,
      &quot;catName&quot;: &quot;Commemorative Coins&quot;,
      &quot;catDesc&quot;: &quot;Congress authorizes commemorative coins that celebrate and honor American people,  places, events, and institutions.  Although these coins are legal tender, they are not minted for general circulation.  Each commemorative coin is produced by the United States Mint in limited quantity and is only available for a limited time.&quot;
    },
    {
      &quot;catNumber&quot;: 5,
      &quot;catName&quot;: &quot;Yearly Designs&quot;,
      &quot;catDesc&quot;: &quot;Designed coins, where you can browse and purchase special coins honoring a wide range of humanities accomplishments.   Qualities and availability are not guaranteed.  Please call to check all availability.  Each set is issued for a limited time.&quot;
    }
  ],
  &quot;Unique&quot;: false,
  &quot;ColumnMapping&quot;: 1,
  &quot;Site&quot;: null,
  &quot;Container&quot;: null,
  &quot;DesignMode&quot;: false
}"/>

    </p>
    
    <p><asp:Button ID="btnJsonInput" runat="server" onclick="btnJsonInput_Click" 
                   Text="Send Json" SkinID="Button"/></p>

    <p>Result: <asp:Label ID="lblJsonOutput" runat="server" /></p>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HelpContentPlaceholder" runat="server">

</asp:Content>