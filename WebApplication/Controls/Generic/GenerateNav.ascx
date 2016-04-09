﻿<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="GenerateNav.ascx.cs" Inherits="WebApplication.Controls.GenerateNav" %>
<asp:ListView ID="ItemsList" runat="server" OnItemDataBound="ItemsList_OnItemDataBound" OnLayoutCreated="ItemsList_OnLayoutCreated" ViewStateMode="Disabled">
    <LayoutTemplate>
        <ul id="ul" runat="server">
            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
        </ul>
    </LayoutTemplate>
    <ItemTemplate>
        <li id="li" runat="server">
            <asp:HyperLink ID="Link" runat="server"></asp:HyperLink>
            <span class="divider">
                <asp:Literal runat="server" ID="Divider"></asp:Literal></span>
            <asp:ListView ID="ChildList" runat="server">
                <ItemTemplate>
                </ItemTemplate>
            </asp:ListView>
        </li>
    </ItemTemplate>
</asp:ListView>