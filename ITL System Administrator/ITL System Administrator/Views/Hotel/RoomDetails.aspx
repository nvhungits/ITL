<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RoomDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- BEGIN PAGE HEADER-->
    <h3 class="page-title">Form Layouts <small>form layouts</small>
    </h3>
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <i class="fa fa-home"></i>
                <a href="index.html">Home</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">Form Stuff</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">Form Layouts</a>
            </li>
        </ul>
        <div class="page-toolbar">
            <div class="btn-group pull-right">
                <button type="button" class="btn btn-fit-height grey-salt dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
                    Actions <i class="fa fa-angle-down"></i>
                </button>
                <ul class="dropdown-menu pull-right" role="menu">
                    <li>
                        <a href="#">Action</a>
                    </li>
                    <li>
                        <a href="#">Another action</a>
                    </li>
                    <li>
                        <a href="#">Something else here</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">Separated link</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- END PAGE HEADER-->
    <!-- BEGIN PAGE CONTENT-->
    <div class="row">
        <div class="col-md-12">
            <div class="tabbable-line boxless tabbable-reversed">
                <div class="portlet light bg-inverse">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-equalizer font-red-sunglo"></i>
                            <span class="caption-subject font-red-sunglo bold uppercase">Form Sample</span>
                            <span class="caption-helper">form actions on top...</span>
                        </div>
                        <div class="actions">
                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                <i class="icon-cloud-upload"></i>
                            </a>
                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                <i class="icon-wrench"></i>
                            </a>
                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                <i class="icon-trash"></i>
                            </a>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <!-- BEGIN FORM-->
                        <%Room roomDetails = Model; %>
                        <form action="#" class="form-horizontal">
                            <div class="form-body">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Room Id</label>
                                    <div class="col-md-4">
                                        <input type="text" value="<%=roomDetails.RoomId %>" class="form-control" disabled="" id="form_control_RoomId" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Room Name</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" value="<%=roomDetails.RoomName %>" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Type</label>
                                    <div class="col-md-4">
                                        <select class="form-control" id="form_control_type">
                                            <option value="0">Please select...</option>
                                            <option value="1">Option 1</option>
                                        </select>
                                        <div class="form-control-focus"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Short Description</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" value="<%=roomDetails.Short_Description %>" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Description</label>
                                <div class="col-md-4">
                                    <textarea class="form-control" rows="3"><%=roomDetails.Description %></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-4">
                                    <div class="md-checkbox">
                                        <%if(roomDetails.Available == 1){ %>
                                            <input checked type="checkbox" id="checkbox_Available" class="md-check">
                                        <%}else{ %>
                                            <input type="checkbox" id="checkbox_Available" class="md-check">
                                        <%} %>
                                        <label for="checkbox_Available">
                                            <span class="inc"></span>
                                            <span class="check"></span>
                                            <span class="box"></span>
                                            Available</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-3 col-md-4">
                                        <button type="submit" class="btn green">Save</button>
                                        <button type="button" class="btn default" onclick="window.history.back()">>Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- END FORM-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END PAGE CONTENT-->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CssContent" runat="server">
</asp:Content>
