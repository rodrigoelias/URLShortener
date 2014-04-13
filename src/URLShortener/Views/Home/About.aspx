﻿<%@ Page Language="C#" MasterPageFile="~/Views/Master/DefaultViewMasterPage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	RaboTrim(url)! - About
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>What is URL Shortener service?</h2>
    <br />
    <p>
        URL shortening is a technique to convert a long URL (site or page address) to a shorter version. 
        This shorter version of the URL is usually cleaner and easier to share or remember. 
        When someone accesses the shortened address, the browser redirects to the original (large) url address. 
        It is also called URL redirection or URL redirect.
    </p>            
    <h3>Uses and purposes:</h3>    
    <ul class="list-group">
        <li class="list-group-item">Share links inside email messages without breaking lines;</li>
        <li class="list-group-item">Easily remember your favorite addresses;</li>
        <li class="list-group-item">Share short links in instant-messaging;</li>
        <li class="list-group-item">Share easy-to-type links in news and printed material;</li>
        <li class="list-group-item">Have clean and compact urls for your use;</li>
        <li class="list-group-item">Hide real URL (user will see the real link only after clicking the short url);</li>
        <li class="list-group-item">Create human-readable links;</li>
        <li class="list-group-item">Avoid errors when typing long urls links with parameters.</li>
    </ul>
    <br />
    <input type="submit" value="Back to RaboTrim(url)!" onclick="window.history.back(-1);" class="btn btn-lg btn-primary" />
</asp:Content>