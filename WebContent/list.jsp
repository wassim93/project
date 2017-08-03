<%
int timeout = session.getMaxInactiveInterval();
response.setHeader("Refresh", timeout + "; URL = login.jsp");
%>

<!DOCTYPE html>
<!--[if IE 9]>         <html class="ie9 no-focus" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-focus" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Liste Réclamations || Tunisair Handling</title>

       <jsp:include page="header.jsp" />
       
            <!-- Main Container -->
            <main id="main-container">
            ${success}
                <!-- Page Header -->
                <div class="content bg-gray-lighter">
                    <div class="row items-push">
                        <div class="col-sm-7">
                            <h1 class="page-heading">
                                Liste des Réclamations 
                            </h1>
                        </div>
                       
                    </div>
                </div>
                <!-- END Page Header -->

                <!-- Page Content -->
                <div class="content">
                    <!-- Dynamic Table Full -->
                    <div class="block">
                       
                        <div class="block-content">
                            <!-- DataTables init on table by adding .js-dataTable-full class, functionality initialized in js/pages/base_tables_datatables.js -->
                           <form action="list" method="post">
                            <table class="table table-bordered table-striped js-dataTable-full">
                                <thead>
                                    <tr>
                                        <th>Numero</th>
                                         <th class="hidden-xs">Service</th>
                                        <th class="hidden-xs">Responsable</th>
                                        <th class="hidden-xs" style="width: 15%;">Statut</th>
                                        <th class="text-center" style="width: 10%;">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="list" items="${liste}" >
                               
                                    <tr>
                                        <td class="font-w600">${list.num }</td>
                                        <td class="font-w600">
                                        <c:choose>
                                        <c:when test="${list.service == 1}">Acceptation</c:when>
                                        <c:when test="${list.service == 2}">Accueil</c:when>
                                        <c:when test="${list.service == 3}">Traitement bagages</c:when>
                                        <c:otherwise>Transport</c:otherwise>
                                        </c:choose>
                                        </td>
                                        <td class="hidden-xs">${list.responsable}</td>
                                        <td class="hidden-xs">
                                            <span class="label label-warning">En cours</span>
                                        </td>
                                        <td class="text-center">
                                            <div class="btn-group">
                                                <button class="btn btn-xs btn-primary"  type="submit" data-toggle="tooltip" value="${list.num}" name="update" title="Modifier fiche" onclick="form.action='update';form.method='get'"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-xs btn-danger" type="submit" data-toggle="tooltip" value="${list.num}" name="delete" title="Supprimer fiche"><i class="fa fa-times"></i></button>
                                                <button class="btn btn-xs btn-default" type="submit" data-toggle="tooltip" value="${list.num}" name="print" title="Imprimer fiche" onclick="form.action='print';form.method='get'"><i class="fa fa-print"></i></button>
                                                
                                            </div>
                                        </td>
                                    </tr>
                                     </c:forEach>
                                    </tbody>
                            </table>
                            </form>
                        </div>
                    </div>
                    <!-- END Dynamic Table Full -->

                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

          <jsp:include page="footer.jsp" />
          
        <!-- Page JS Plugins -->
        <script src="assets/js/plugins/datatables/jquery.dataTables.min.js"></script>

        <!-- Page JS Code -->
        <script src="assets/js/pages/base_tables_datatables.js"></script>
      
          </body>
</html>