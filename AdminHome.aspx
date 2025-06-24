<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="TMS_project.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="row">
    <div class="col-md-3" id="left">
        <table class="table">
            <tr style="background-color: #000000; color: white; font-size: 18px;">
                <td>
                    <a href="#" type="button">Dashboard</a>
                </td>
            </tr>
            <tr style="background-color: #000000; color: white; font-size: 18px;">
                <td>
                    <a href="../create_task.aspx" type="button" id="create_task">Create Task</a>
                </td>
            </tr>
            <tr style="background-color: #000000; color: white; font-size: 18px;">
                <td>
                    <a href="../manage_task.aspx" type="button">Manage Task</a>
                </td>
            </tr>
            <tr style="background-color: #000000; color: white; font-size: 18px;">
                <td>
                    <a href="#" type="button">Leave Application</a>
                </td>
            </tr>
            <tr style="background-color: #000000; color: white; font-size: 18px;">
                <td>
                    <a href="../default.aspx" type="button"> Sign out</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="col-md-8" id="">
        <h4>INSTRUCTIONS FOR EMPLOYEES</h4>
        <ul style="line-height: 3em; font-size: 1em; list-style-type: none;">
            <li>1.IDENTIFY THE MOST CRITICAL PROCESSES. ....</li>
            <li>2.USE A STANDARDIZED PROCEDURE TEMPLATE FOR CLARITY AND CONSISTENCY. ....</li>
            <li>3.MAKE YOUR PROCEDURES MANUAL ACCESSIBLE AND EASY TO UPDATE. ...</li>
            <li>4.INVOLVE THE TEAM IN CREATING YOUR DOCUMENTATION.</li>
        </ul>
    </div>
</div>

</asp:Content>
