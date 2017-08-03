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

<title>Imprimer Réclamation</title>

<jsp:include page="header.jsp" />

<!-- Main Container -->
<main id="main-container">
	${success}
<!-- Page Content -->
<div class="content">
	<div class="row">
		<div class="col-sm-7">
			<h1 class="page-heading">Imprimer Réclamation</h1>
		</div>

	</div>
</div>
<div class="content content-boxed">

	<!-- Main Content -->
	<form class="form-horizontal push-50-t push-50" method="post" action="print" >
		<div class="block">
			<div class="block-content tab-content">
				<div class="col-md-6">
					<!-- Floating Labels -->
					<div class="block">

						<div class="block-content block-content-narrow">
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<input class="form-control" type="number" value="${update.num}" id="material-color-primary2" name="num" readonly="readonly">
										<label for="material-color-primary2">Numéro du fiche</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
									<input class="form-control" type="text" value="${update.aeroport}" name="aero" readonly="readonly">
										 <label for="material-color-primary2">Aéroport</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
									<input class="form-control" type="text" value="${serv}" name="service" readonly="readonly">
									 <label for="material-color-primary2">Service</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<input class="form-control" type="text"
											value="${update.nature}" id="material-color-primary2"
											name="nature" readonly="readonly"> 
											<label for="material-color-primary2">Nature</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" id="material-textarea-small2"
											name="cause" rows="3" readonly="readonly">${update.cause}</textarea>
										<label for="material-color-primary2">Cause</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" id="material-textarea-small2"
											name="action" rows="3" readonly="readonly">${update.action}</textarea>
										<label for="material-color-primary2">Action</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" id="material-textarea-large2"
										 name="efficacite" rows="8" readonly="readonly">${update.mesEfficacite}</textarea>
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
										<input class="form-control" type="text" value="${update.date}"
											id="example-datetimepicker6" name="date"
											placeholder="Choisir la date ..." readonly="readonly">
											 <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<input class="form-control" type="text" value="${update.processus}" name="processus" readonly="readonly">
											 <label for="material-color-primary2">Processus</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<input class="form-control" type="text"
											value="${update.responsable}" id="material-color-primary2"
											name="resp" readonly="readonly"> 
											<label for="material-color-primary2">Responsable</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-9">
									<div class="form-material form-material-primary floating">
										<input class="form-control" type="text" value="${update.consequence }" name="consequence" readonly="readonly">
										<label for="material-color-primary2">Conséquence</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" id="material-textarea-small2"
										 name="solution" rows="3" readonly="readonly">${update.solution}</textarea>
										<label for="material-color-primary2">Solution</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<div class="form-material form-material-primary floating">
										<textarea class="form-control" name="echeance"
											id="material-textarea-small2"
											rows="3" readonly="readonly">${update.echeance}</textarea>
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
					<i class="fa fa-print push-5-r"></i> Imprimer
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
</script>
</body>
</html>