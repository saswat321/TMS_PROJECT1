﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="TMS_project.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ErrorPage</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <a href="default.aspx"><img src="Logoimg/error.jpg" alt="404 error" /></a>
            <div>
                <asp:Label ID="errords" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
