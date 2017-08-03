<%
int timeout = session.getMaxInactiveInterval();
response.setHeader("Refresh", timeout + "; URL = login.jsp");
%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="ie9 no-focus" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-focus" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">

<title>Ajouter Réclamation</title>

<jsp:include page="header.jsp" />

<!-- Main Container -->
<main id="main-container"> <c:choose>
	<c:when test="${test}">${success}</c:when>
	<c:otherwise>${error}</c:otherwise>
</c:choose> <!-- Page Content -->
<div class="content">
	<div class="row">
		<div class="col-sm-7">
			<h1 class="page-heading">Ajouter Réclamation</h1>
		</div>

	</div>
</div>
<div class="content content-boxed">

	<!-- Main Content -->
<!-- add script class in form js-validation-addRec -->
	<form class=" form-horizontal push-50-t push-50"
		action="addrec" method="post">
		<div class="block">
			<div class="block-content tab-content">
				<div class="col-md-6">
					<!-- Floating Labels -->
					<div class="block">

						<div class="block-content block-content-narrow">
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<input class="form-control" type="number"
											id="material-color-primary2" name="num"> <label
											for="material-color-primary2">Numéro du fiche</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
									<select class="form-control" id="material-select2"
											name="aero" size="1">
											<option></option>
											<!-- Empty value for demostrating material select box -->
											<c:forEach var="list" items="${aeroSes}">
												<option value="${list}">${list}</option>
											</c:forEach>
										</select>
										 <label	for="material-color-primary2">Aéroport</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<select class="form-control" id="material-select2"
											name="service" size="1">
											<option></option>
											<!-- Empty value for demostrating material select box -->
											<option value="${userSession.service.nom }">${userSession.service.nom }</option>
											<c:forEach var="list" items="${serviceSes}">
												<option value="${list.nom}">${list.nom}</option>
											</c:forEach>
										</select> <label for="material-color-primary2">Service</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<input class="form-control" type="text"
											id="material-color-primary2" name="nature"> <label
											for="material-color-primary2">Nature</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" id="material-textarea-small2"
											name="cause" rows="3"></textarea>
										<label for="material-color-primary2">Cause</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" id="material-textarea-small2"
											name="action" rows="3"></textarea>
										<label for="material-color-primary2">Action</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" id="material-textarea-large2"
											name="efficacite" rows="8"></textarea>
										<label for="material-color-primary2">Efficacités</label>
									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- END Floating Labels -->
				</div>

				<div class="col-md-6">
					<!-- Floating Labels -->
					<div class="block">

						<div class="block-content block-content-narrow">
							<div class="form-group">
								<div class="col-sm-9">
									<div
										class="js-datetimepicker form-material form-material-primary input-group date">
										<input class="form-control" type="text"
											id="example-datetimepicker6" name="date"
											placeholder="Choisir la date ..."> <span
											class="input-group-addon"><i class="fa fa-calendar"></i></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
									<select class="form-control" id="material-select2"
											name="processus" size="1">
											<option></option>
											<!-- Empty value for demostrating material select box -->
											<c:forEach var="list" items="${proSes}">
												<option value="${list}">${list}</option>
											</c:forEach>
										</select>
										<label for="material-color-primary2">Processus</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<input class="form-control" type="text"
											id="material-color-primary2" name="resp"> <label
											for="material-color-primary2">Responsable</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<select class="form-control" id="material-select2"
											name="consequence" size="1">
											<option></option>
											<!-- Empty value for demostrating material select box -->
											<option value="Qualité de service">Qualité de service</option>
											<option value="Sécurité">Sécurité</option>
											<option value="Sûreté">Sûreté</option>
											
										</select> 
										<label for="material-color-primary2">Conséquence</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" id="material-textarea-small2"
											name="solution" rows="3"></textarea>
										<label for="material-color-primary2">Solution</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" name="echeance"
											id="material-textarea-small2" rows="3"></textarea>
										<label for="material-color-primary2">Echéance</label>
									</div>
								</div>
							</div>


						</div>
					</div>
					<!-- END Floating Labels -->
				</div>
			</div>
			<div
				class="block-content block-content-full bg-gray-lighter text-center">
				<button class="btn btn-sm btn-primary" type="submit">
					<i class="fa fa-check push-5-r"></i> Sauvegarder
				</button>
				<button class="btn btn-sm btn-warning" type="reset">
					<i class="fa fa-refresh push-5-r"></i> Annuler
				</button>
			</div>
		</div>
	</form>
	<!-- END Main Content -->
</div>
<!-- END Page Content --> </main>
<!-- END Main Container -->

<jsp:include page="footer.jsp" />


<!-- Page JS Plugins -->
<script
	src="assets/js/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="assets/js/plugins/bootstrap-datetimepicker/moment.min.js"></script>
<script
	src="assets/js/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script
	src="assets/js/plugins/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
<script
	src="assets/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="assets/js/plugins/select2/select2.full.min.js"></script>
<script src="assets/js/plugins/masked-inputs/jquery.maskedinput.min.js"></script>
<script
	src="assets/js/plugins/jquery-auto-complete/jquery.auto-complete.min.js"></script>
<script
	src="assets/js/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
<script src="assets/js/plugins/dropzonejs/dropzone.min.js"></script>
<script
	src="assets/js/plugins/jquery-tags-input/jquery.tagsinput.min.js"></script>
<script src="assets/js/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="assets/js/addRecvalidation.js"></script>

<!-- Page JS Code -->
<script src="assets/js/pages/base_forms_pickers_more.js"></script>
<script>
	jQuery(function() {
		// Init page helpers (BS Datepicker + BS Datetimepicker + BS Colorpicker + BS Maxlength + Select2 + Masked Input + Range Sliders + Tags Inputs plugins)
		App.initHelpers([ 'datepicker', 'datetimepicker', 'colorpicker',
				'maxlength', 'select2', 'masked-inputs', 'rangeslider',
				'tags-inputs' ]);
	});
</script>
<script type="text/javascript">
	$("div.success").fadeIn(300).delay(1500).fadeOut(400);
	$("div.failure").fadeIn(300).delay(1500).fadeOut(400);

</script>
</body>
</html>