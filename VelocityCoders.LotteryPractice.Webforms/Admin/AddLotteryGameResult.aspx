﻿<%@ Page Language="C#" Title="Add Game Result" MaintainScrollPositionOnPostback="true" Theme="Admin" AutoEventWireup="true" MasterPageFile="~/MasterPages/Section2.Master" CodeBehind="AddLotteryGameResult.aspx.cs" Inherits="VelocityCoders.LotteryPractice.Webforms.Admin.AddLotteryGameResult" %>

<%@ Register TagPrefix="ErrorPanel"  TagName="MessageBrokenRules" Src="~/UserControl/MessageBrokenRulesControl.ascx"%>



<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="head" ></asp:Content>
<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1">
  <%--BEGIN PAGE TITLE --%>
  <div>
    <h1><asp:label runat="server" ID="PageTitleCaption" /></h1>
  </div>
  <%--END PAGE TITLE --%>

  <%--BEGIN CONTENT | MAIN--%>
  <div id="ContentContainer" >
    <%--  BEGIN ======  INPUT FORM CONTAINER  --%>
    <div class="formContainer gameResult">
      <ErrorPanel:MessageBrokenRules runat="server" ID="MessageBrokenPanel"  Visible="false" />

      <div>
        <label>Game Name: </label>
          <asp:DropDownList runat="server" ID="drpGameName"  DataTextField="LotteryName" DataValueField="LotteryId" AutoPostBack="true" OnSelectedIndexChanged="drpGameName_SelectedIndexChanged" >
          </asp:DropDownList>
      </div>

      <div>
        <span class="lblCenter"><label class="lblCalDrawingDate">Drawing Date: </label>
        <asp:Textbox TextMode="Date" runat="server" ID="calDrawingDate" /></span>
      </div>

      <div>
        <label>Jackpot Amount: </label>
          <asp:TextBox runat="server" ID="txtJackpotAmount" />
      </div>

      <div>
        <label>Multiplier: </label>
          <asp:DropDownList runat="server" CssClass="drpListMultiplier" ID="drpListMultiplier" >
            <asp:ListItem Text="(Select a multiplier)" value="" />
            <asp:ListItem Text="1" Value="1" />
            <asp:ListItem Text="2" Value="2" />
            <asp:ListItem Text="3" Value="3" />
            <asp:ListItem Text="4" Value="4" />
            <asp:ListItem Text="5" Value="5" />
            <asp:ListItem Text="6" Value="6" />
          </asp:DropDownList>
      </div>

      <div>
        <asp:Button runat="server" Text="Add Game Result" class="btnSubmitResult" OnClick="btnSubmitResult"/>
      </div>

    </div> <%--  END ***** INPUT FORM CONTAINER  --%>

    <%--BEGIN SIDEBAR | VIEW GAME IN DATABASE--%>
    <div class="sideBarContainer gameResult">
      <div class="sidebarSpacer"></div>
      <h2>Ball Numbers</h2>
      <asp:Repeater runat="server" ID="rptBallNumber" >
        <ItemTemplate>
          <div class="BallNumberContainer">
            <label>Ball</label>
            <asp:TextBox runat="server"  ID="BallNumber" Text="" TextMode="Number" />
          </div>
        </ItemTemplate>
      </asp:Repeater>

    </div> <%--  END ***** SIDEBAR CONTAINER  --%>

    <div class="inputFormContainer">
      <asp:Label runat="server" ID="lblMessage" />
    </div>

  </div> <%--  END  *****  CONTENT CONTAINER  --%>
      
</asp:Content>
