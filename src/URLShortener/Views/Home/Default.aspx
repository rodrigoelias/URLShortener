﻿<%@ Page Language="C#" MasterPageFile="~/Views/Master/DefaultViewMasterPage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RaboTrim(url)!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Create your short URL now!</h2>
    <br />
    <% using (Html.BeginForm("HandleForm", "Home", FormMethod.Post, new { id = "URLForm" })) %>
    <% { %>
    <p>
        <strong>Please, enter a long URL:</strong><br />
        <div class="originalfield">
            <%= Html.TextBox("original", string.Empty, new { @class = "form-control", placeholder = "By entering in a URL in this text field, your URL will be trimmed!", Style = "width:100%" })%>
        </div>
    </p>
    <p>
        <strong>Your alias (optional):</strong><br />
        <%= Html.TextBox("alias", string.Empty, new { @class = "form-control", placeholder = "At max 20 characters, may contain letters, numbers, and dashes.", maxlength = 20, Style = "width:450px" })%><br />
    </p>
    <br />
    <input type="submit" class="btn btn-lg btn-primary" title="Just press the button to trim the URL!" value="Trim it now!" /><br />
    <% } %>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#URLForm').validate(
             {
                 rules: {
                     original: {
                         minlength: 10,
                         required: true,
                         url: true
                     }
                 },
                 highlight: function (element) {
                     $(element).closest('.originalfield').removeClass('').addClass('alert alert-danger');
                 },
                 success: function (element) {
                     element.closest('.originalfield').removeClass('alert alert-danger').addClass('');
                 }
             });
        });
    </script>
</asp:Content>
