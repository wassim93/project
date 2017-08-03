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

<title>Profil</title>
<jsp:include page="header.jsp" />


		<!-- Main Container -->
		<main id="main-container"> <!-- Page Content -->
		${success}
		<div class="content content-boxed">
			<!-- User Header -->
			<div class="block">
				<!-- Basic Info -->
				<div class="bg-image"
					style="background-image: url('assets/img/photos/photo3@2x.jpg');">
					<div
						class="block-content bg-primary-op text-center overflow-hidden">
						<div class="push-30-t push animated fadeInDown">
							<img class="img-avatar img-avatar96 img-avatar-thumb"
								src="assets/img/avatars/avatar10.jpg" alt="">
						</div>
						<div class="push-30 animated fadeInUp">
							<h2 class="h4 font-w600 text-white push-5">${userSession.nom}
								${userSession.prenom }</h2>
							<h3 class="h5 text-white-op">${userSession.poste }</h3>
						</div>
					</div>
				</div>
				<!-- END Basic Info -->


			</div>
			<!-- END User Header -->

			<!-- Main Content -->
			<form class="js-validation-profil form-horizontal push-50-t push-50" action="profil" method="post">
				<div class="block">
					<ul class="nav nav-tabs nav-justified push-20" data-toggle="tabs">
						<li class="active"><a href="#tab-profile-personal"><i
								class="fa fa-fw fa-pencil"></i> Informations</a></li>
						<li><a href="#tab-profile-password"><i
								class="fa fa-fw fa-lock"></i> Mot de passe</a></li>
						<li><a href="#tab-profile-privacy"><i
								class="fa fa-fw fa-info"></i> Autres</a></li>
					</ul>
					<div class="block-content tab-content">
						<!-- Personal Tab -->
						<div class="tab-pane fade in active" id="tab-profile-personal">
							<div class="row items-push">
								<div class="col-sm-6 col-sm-offset-3 form-horizontal">
									<div class="form-group">
										<div class="col-xs-12">
											<label for="profile-email">Adresse Email</label> <input
												class="form-control input-lg" type="email"
												id="profile-email" name="email"
												placeholder="Entrer votre Email ..."
												value="${userSession.email}">
										</div>
									</div>
									<div class="form-group">
										<div class="col-xs-6">
											<label for="profile-firstname">Prenom</label> <input
												class="form-control input-lg" type="text"
												id="profile-firstname" name="prenom"
												placeholder="Entrer votre prenom.."
												value="${userSession.prenom }">
										</div>
										<div class="col-xs-6">
											<label for="profile-lastname">Nom</label> <input
												class="form-control input-lg" type="text"
												id="profile-lastname" name="nom"
												placeholder="Entrer votre nom .."
												value="${userSession.nom }">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-6">
											<label for="profile-city">Poste</label> <input
												class="form-control input-lg" type="text" id="profile-city"
												name="poste" placeholder="Entrer votre poste .."
												value="${userSession.poste }">
										</div>
										<div class="col-sm-6">
											<label for="profile-age">Service</label> 
											<select class="form-control" id="contact1-subject"
												name="service" size="1" style="height: 47px;">
												<option value="${userSession.service.nom}">${userSession.service.nom}</option>
												<c:forEach var="serviceSes" items="${serviceSes}">
													<option value="${serviceSes.nom}">${serviceSes.nom}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-6">
											<label for="profile-city">Adresse postale</label> <input
												class="form-control input-lg" type="text" id="profile-city"
												name="adresse" placeholder="Entrer votre adresse .."
												value="${userSession.adresse }">
										</div>
										<div class="col-sm-6">
											<label for="profile-age">Age</label> <input
												class="form-control input-lg" type="number" id="profile-age"
												name="age" placeholder="Entrer votre age.." 
											<c:choose>
												    <c:when test="${userSession.age == 0}"> value=""
												    </c:when>
												    <c:otherwise>
												    value="${userSession.age }"
												    </c:otherwise>
												
												</c:choose>'>
										</div>
									</div>
									<div class="form-group">
										<label class="col-xs-12">Sexe</label>
										<div class="col-xs-12">
											<label
												class="css-input css-radio css-radio-primary push-10-r">
												<input type="radio" name="radio" value="Femme" <c:if test="${userSession.sexe == 'Femme'}">checked</c:if>>
												<span></span>
												Femme 
											</label> <label class="css-input css-radio css-radio-primary">
												<input type="radio" name="radio" value="Homme" <c:if test="${userSession.sexe == 'Homme'}">checked</c:if>><span></span>
												Homme
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END Personal Tab -->

						<!-- Password Tab -->
						<div class="tab-pane fade" id="tab-profile-password">
							<div class="row items-push">
								<div class="col-sm-6 col-sm-offset-3 form-horizontal">
									<div class="form-group">
										<div class="col-xs-12">
											<label for="profile-password">Mot de passe actuel</label> <input
												class="form-control input-lg" type="password"
												id="profile-password" name="password" value="${userSession.password}">
										</div>
									</div>
									<hr>
									<div class="form-group">
										<div class="col-xs-12">
											<label for="profile-password-new">Nouveau mot de
												passe</label> <input class="form-control input-lg" type="password"
												id="profile-password-new" name="newPassword">
										</div>
									</div>
									<div class="form-group">
										<div class="col-xs-12">
											<label for="profile-password-new-confirm">Confirmation</label>
											<input class="form-control input-lg" type="password"
												id="profile-password-new-confirm"
												name="newPasswordConf">
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END Password Tab -->

						<!-- Privacy Tab -->
						<div class="tab-pane fade" id="tab-profile-privacy">
							<div class="row items-push">
								<div class="col-sm-6 col-sm-offset-3 form-horizontal">
									<div class="form-group">
										<div class="col-xs-12">
											<label for="profile-bio">Bio</label>
											<textarea class="form-control input-lg" id="profile-bio"
												name="bio" rows="15"
												placeholder="Decrivez vous en quelques lignes..">${userSession.bio}</textarea>
										</div>
									</div>
									<hr>

								</div>
							</div>
						</div>
						<!-- END Privacy Tab -->
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


		
</body>
</html>