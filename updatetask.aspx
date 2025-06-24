<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatetask.aspx.cs" Inherits="TMS_project.updatetask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <%--1-Bootstrap CSS--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <%--2-Datatable CSS--%>
    <link href="datatable/css/dataTables.dataTables.min.css" rel="stylesheet" />

    <%--3-Fontawesome CSS--%>
    <link href="fontawesome/fontawesome-free-6.7.2-web/css/all.css" rel="stylesheet" />

    <%--4-Jquery js--%>
    <script src="bootstrap/js/jquery.slim.min.js"></script>

    <%--5-Propper js--%>
    <script src="bootstrap/js/popper.min.js"></script>

    <%--6-Bootstrap js--%>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
                <a class="navbar-brand" href="default.aspx">
                    <img src="Logoimg/tasklogo.jpeg" alt="logo" width="49" height="49" />TMS Application</a>
                <button class="navbar-toggler" type="button" data-toggle="'collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="default.aspx"><b>Menu1</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Menu2</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Menu3</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Menu4</b></a>
                        </li>
                    </ul>
                </div>
                <div class="pmd-navbar-right-icon ml-auto">
                    <a class="btn btn-sm btn-primary" href="#">
                        <asp:Label ID="lblUserName" runat="server" Text="Abhi" ForeColor="Orange"></asp:Label></a>
                    <a class="btn btn-sm btn-primary" href="default.aspx">Sign Out</a>
                </div>
            </nav>
            <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0">
                <%--<h3>Admin Panel</h3>--%>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-2 border border-info">

                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Active</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                            </li>
                        </ul>
                        <hr class="d-sm-none" />
                    </div>
                    <div>
                        <center>
                            <h3>Your Tasks</h3>
                        </center>
                        <table class="table">
                            <tr>
                                <th>S.No</th>
                                <th>Task ID</th>
                                <th>Descript</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                                <td>1.</td>
                                <td>7</td>
                                <td>make the presentation ready</td>
                                <td>not complete</td>
                                <td><a href="useredit.aspx">Update</a></td>
                            </tr>
                        </table>
                    </div>



                </div>
            </div>

        </div>
        <br />
        <div class="jumbotron text-center alert alert-danger" style="margin-bottom: 0; border: 2px solid red">

            <div class="container">

                <div class="row">
                    <div class="col-md-12 fa-copyright border-dark">
                        <p class="text-center">&copy; Copyrith 2025 Library. All rights reserved.</p>
                    </div>
                </div>
            </div>

        </div>

    </form>
</body>
</html>
