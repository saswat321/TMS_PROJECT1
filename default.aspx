<%@ Page Title="Home page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TMS_project._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>

                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Logoimg/taskbgm3.jpg" alt="Los Angeles">

                    </div>
                    <div class="carousel-item">
                        <img src="Logoimg/taskbgm4.jpg" alt="Chicago" >

                    </div>
                    <div class="carousel-item">
                        <img src="Logoimg/taskbgm1.jpg" alt="New york" >

                    </div>
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
            </div>
                </div>
            </div>

        </div>
</asp:Content>
