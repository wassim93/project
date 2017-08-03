/*
 *  Document   : profilvalidation.js
 *  Author     : pixelcave
 *  Description: Custom JS code used in Register Page
 */

var BasePagesRegister = function() {
    // Init Register Form Validation, for more examples you can check out https://github.com/jzaefferer/jquery-validation
    var initValidationRegister = function(){
        jQuery('.js-validation-profil').validate({
            errorClass: 'help-block text-right animated fadeInDown',
            errorElement: 'div',
            errorPlacement: function(error, e) {
                jQuery(e).parents('.form-group > div').append(error);
            },
            highlight: function(e) {
                jQuery(e).closest('.form-group').removeClass('has-error').addClass('has-error');
                jQuery(e).closest('.help-block').remove();
            },
            success: function(e) {
                jQuery(e).closest('.form-group').removeClass('has-error');
                jQuery(e).closest('.help-block').remove();
            },
            rules: {
                'nom': {
                    required: true,
                    minlength: 3
                },
                'prenom': {
                    required: true,
                    minlength: 3
                },
                 'cin': {
                    required: true,
                    minlength: 8,
                    maxlength: 8
                },
                 'poste': {
                    required: true,
                    minlength: 3
                },
                'email': {
                    required: true,
                    email: true
                },
                'password': {
                    required: true,
                    minlength: 5
                },
                'password2': {
                    required: true,
                    equalTo: '#register-password'
                },
                'register-terms': {
                    required: true
                }
            },
            messages: {
                'nom': {
                    required: 'Svp Entrez votre nom ',
                    minlength: 'Votre nom doit contenir au moin 3 caracteres'
                },
                'prenom': {
                    required: 'Svp Entrez votre prenom ',
                    minlength: 'Votre nom doit contenir au moin 3 caracteres'
                },
                'poste': {
                    required: 'Svp Entrez votre poste ',
                    minlength: 'Votre poste doit contenir au moin 3 caracteres'
                },
                'cin': {
                    required: 'Svp Entrez votre cin ',
                    minlength: 'Votre cin doit avoir 8 chiffres uniquement'
                },
                'email': 'Svp Entrez une adresse mail valide',
                'password': {
                    required: 'Svp Entrez votre mot de passe',
                    minlength: 'Mot de passe doit contenir au moins 5 caracteres'
                },
                'password2': {
                    required: 'Please provide a password',
                    minlength: 'Your password must be at least 5 characters long',
                    equalTo: 'Please enter the same password as above'
                },
                'register-terms': 'You must agree to the service terms!'
            }
        });
    };

    return {
        init: function () {
            // Init Register Form Validation
            initValidationRegister();
        }
    };
}();

// Initialize when page loads
jQuery(function(){ BasePagesRegister.init(); });/**
 * 
 */