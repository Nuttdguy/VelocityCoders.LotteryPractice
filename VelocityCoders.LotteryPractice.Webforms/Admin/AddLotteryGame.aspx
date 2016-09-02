﻿<%@ Page Language="C#" Title="Admin | Add Lottery Game" Theme="Admin"  MasterPageFile="~/MasterPages/Section2.Master" CodeBehind="AddLotteryGame.aspx.cs" Inherits="VelocityCoders.LotteryPractice.Webforms.Admin.AddLotteryGame"%>



<asp:Content ID="Content1"  ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" runat="server"  ContentPlaceHolderID="ContentPlaceHolder1" >   
  <%--BEGIN PAGE TITLE --%>
  <div>
    <h1><asp:label runat="server" ID="PageTitleCaption" /></h1>
  </div>
  <%--END PAGE TITLE --%>

<%--  BEGIN SIDEBAR  ======  VIEW GAME IN DATABASE--%>
    <div class="sideBarContainer addGame"  >
      <div class="sidebarSpacer"></div>
      <h2>View | Edit Game</h2>
      <asp:DropDownList runat="server" ID="drpGameName" AutoPostBack="true"  OnSelectedIndexChanged="CaptureDrpGameName_Selected" >
        <asp:ListItem Text="(Select a Game) " Value="" />
        <asp:ListItem Text="Power Ball" Value="powerball" />
        <asp:ListItem Text="Mega Ball" Value="megaball" />
        <asp:ListItem Text="Gopher 5" Value="gopher5" />
        <asp:ListItem Text="Northstar Cash" Value="northstarcash" />
      </asp:DropDownList>
    </div> <%--  END SIDEBAR ***** VIEW GAME IN DATABASE --%>


  <%--  BEGIN  ======  MAIN-FORM CONTENT --%>
  <div id="ContentContainer">
    <div class="formContainer">

      <!-- SAVE TABLE SUBNAV >> FOR FRONT-END IMPEMENTATION PURPOSES  -->
      <%--  BEGIN  ======  TABLE-SUB-NAV  --%>
<%--      <div class="addGameViewContainer">    
        <ul>
          <li class="addFormLink"><a>Add</a></li><!--
       --><li class="viewFormLink"><a>View</a></li>
        </ul>
      </div>--%> <%--  END  *****  TABLE-SUB-NAV  --%>

      <%--  BEGIN  ====== VIEW GAME FORM  --%>
      <label for="checkBoxViewGame">VIEW GAME</label>
      <input type="checkbox" ID="checkBoxViewGame" />
      <label for="checkBoxAddGame">ADD GAME</label> 
      <input type="checkbox" ID="checkBoxAddGame" />
      <div class="addGameViewContainer show hide">
        <table>
          <asp:Repeater runat="server" ID="tbleViewForm">
            <HeaderTemplate>
              <tr>
                <td>Drawing date</td>
                <td>Ball 1</td>
                <td>Ball 2</td>
                <td>Ball 3</td>
                <td>Ball 4</td>
                <td>Ball 5</td>
                <td>Ball SP</td>
                <td>Ball X</td>
              </tr>
            </HeaderTemplate>
            <ItemTemplate>
              <tr>
                <td>col1</td>
                <td>col2</td>
                <td>col3</td>
                <td>col4</td>
                <td>col5</td>
                <td>col6</td>
                <td>col7</td>
              </tr>
            </ItemTemplate>
          </asp:Repeater>
        </table> 
      </div> <%--  END  *****  VIEW GAME FORM  --%>
    
      <%--  BEGIN ADD GAME ***** ADD GAME FORM --%>
      <div class="addGameContainer show hide cf">
        <div class="addGameSpacer"></div>
        <div>
          <label class="firstLabel">Game Name: </label>
          <asp:TextBox runat="server" ID="txtGameName" />
        </div>
        <div>
          <label>Cost to Play: </label>
          <asp:DropDownList runat="server" ID="drpCostToPlay" >
            <asp:ListItem Text="(Select option)" Value="" />
            <asp:ListItem Text="$1 and $1 = $2 total" Value="1" />
          </asp:DropDownList>
          <%--<asp:TextBox runat="server" TextMode="Number" ID="TxtCostToPlay"  CssClass="txtCostToPlay"/>--%>
        </div>
        <div>
          <label>Has Special Ball: </label>
          <div class="checkbox" >
            <asp:CheckBoxList runat="server" ID="checkboxHasSpecialBall" >
              <asp:ListItem Text="No" Value="0" />
              <asp:ListItem Text="Yes" Value="1" />
            </asp:CheckBoxList>
<%--            <label >No<input type="checkbox" value="0"  /></label>
            <label >Yes<input type="checkbox" value="1" checked /></label>--%>
          </div>
        </div>
        <div>
          <label>Has Regular Balls: </label>
          <div class="checkbox">
            <asp:CheckBoxList runat="server" ID="checkBoxHasRegularBall" >
              <asp:ListItem Text="No" Value="0" />
              <asp:ListItem Text="Yes" Value="1" />
            </asp:CheckBoxList>
<%--            <label >No<input type="checkbox" value="0" /></label>
            <label >Yes<input type="checkbox" value="1" checked /></label>--%>
          </div>
        </div>
        <div>
          <label>How To Play: </label>
          <asp:TextBox runat="server" ID="txtHowToPlay" TextMode="MultiLine" />
        </div>
        <div>
          <label>Game Description: </label>
          <asp:TextBox runat="server" ID="txtGameDescription" TextMode="MultiLine" />
        </div>
        <div>
          <asp:Button runat="server" Text="Add Game" CssClass="btnAddGame" OnClick="BtnAddGame_Click" />
        </div>
      </div> <%--  END ADD GAME ***** ADD GAME FORM --%>

    </div> <%--  END  *****  MAIN-FORM CONTENT --%>
  </div>



    <div class="formContainer" >
      hello
      <asp:label runat="server" ID="lblMessage" />
    </div>

</asp:Content>
        