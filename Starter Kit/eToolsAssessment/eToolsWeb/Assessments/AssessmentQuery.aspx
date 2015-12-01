﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AssessmentQuery.aspx.cs" Inherits="Assessments_AssessmentQuery" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>Assessment: Category Stock List
    </h1>
    <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    <asp:Repeater ID="CategoryDTORepeater" runat="server" DataSourceID="RepeaterDataSource" ItemType="eToolsSystem.Entities.DTOs.CategoryDTO">
        <ItemTemplate>
        
                <h3>Catgeory : <%# Item.CategoryDescription %></h3>
         
                    <asp:Repeater ID="Repeater1" DataSource ="<%# Item.Stocks %>" ItemType="eToolsSystem.Entities.POCOs.CategoryStockItem" runat="server">
                        <ItemTemplate>
                            Description : <%# Item.Name %>
                            <br />
                            QOH :   <%# Item.OnHand %>
                            <br />
                             Markup :  <%# Item.Markup %>
                            <br />
                            
                        </ItemTemplate>
                    </asp:Repeater>
        </ItemTemplate>

    </asp:Repeater>
    <asp:ObjectDataSource ID="RepeaterDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="CategoryStockList" TypeName="eToolsSystem.BLL.ToolsController"></asp:ObjectDataSource>
</asp:Content>

