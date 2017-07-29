/*
 *  Document   : base_pages_register.js
 *  Author     : pixelcave
 *  Description: Custom JS code used in Register Page
 */

var BasePagesRegister = function() {
    // Init Register Form Validation, for more examples you can check out https://github.com/jzaefferer/jquery-validation
    var initValidationRegister = function(){
        jQuery('.js-validation-register').validate({
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
                'register-nom': {
                    required: true,
                    minlength: 3
                },
                'register-prenom': {
                    required: true,
                    minlength: 3
                },
                 'register-cin': {
                    required: true,
                    minlength: 8,
                    maxlength: 8
                },
                 'register-poste': {
                    required: true,
                    minlength: 3
                },
                'register-email': {
                    required: true,
                    email: true
                },
                'register-password': {
                    required: true,
                    minlength: 5
                },
                'register-password2': {
                    required: true,
                    equalTo: '#register-password'
                },
                'register-terms': {
                    required: true
                }
            },
            messages: {
                'register-nom': {
                    required: 'Svp Entrez votre nom ',
                    minlength: 'Votre nom doit contenir au moin 3 caracteres'
                },
                'register-prenom': {
                    required: 'Svp Entrez votre prenom ',
                    minlength: 'Votre nom doit contenir au moin 3 caracteres'
                },
                'register-poste': {
                    required: 'Svp Entrez votre poste ',
                    minlength: 'Votre poste doit contenir au moin 3 caracteres'
                },
                'register-cin': {
                    required: 'Svp Entrez votre cin ',
                    minlength: 'Votre cin doit avoir 8 chiffres uniquement'
                },
                'register-email': 'Svp Entrez une adresse mail valide',
                'register-password': {
                    required: 'Svp Entrez votre mot de passe',
                    minlength: 'Mot de passe doit contenir au moins 5 caracteres'
                },
                'register-password2': {
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
jQuery(function(){ BasePagesRegister.init(); });