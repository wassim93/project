/*
 *  Document   : addRecvalidation.js
 *  Author     : pixelcave
 *  Description: Custom JS code used in Register Page
 */

var BasePagesRegister = function() {
    // Init Register Form Validation, for more examples you can check out https://github.com/jzaefferer/jquery-validation
    var initValidationRegister = function(){
        jQuery('.js-validation-addRec').validate({
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
                'num': {
                    required: true,
                    minlength: 1
                },
                'aero': {
                    required: true
                },
                 'processus': {
                    required: true
                },
                 'date': {
                    required: true
                },
                 'service': {
                    required: true
                },
                'resp': {
                    required: true,
                    minlength: 3
                },
                'nature': {
                    required: true,
                    minlength: 3
                },
                'consequence': {
                    required: true

                },
                  'cause': {
                    required: true,
                    minlength: 3

                },
                  'action': {
                    required: true,
                    minlength: 3

                },
                  'solution': {
                    required: true,
                    minlength: 3

                },
                 
                  'efficacite': {
                    required: true,
                    minlength: 3

                },
                'echeance':{
                	required:true,
                	minlength: 3
                }
              
            },
            messages: {
                'num': {
                    required: 'Svp Entrez le numero du fiche ',
                    minlength: 'Le num doit avoir au moin un chiffre'
                },
                'aero': {
                    required: 'Svp choisir un aéroport '
                },
                'date': {
                    required: 'Svp choisir une date '
                },
                'service': {
                    required: 'Svp choisir un service '
                },
                'nature': {
                	required:'Svp Entrez une adresse mail valide',
                	minlength: 'Ce champ doit avoir au moins 3 caracteres'
                 },
                'cause': {
                    required: 'Svp Entrez la cause de réclamation',
                    minlength: 'Ce champ doit avoir au moins 3 caracteres'
                },
                'consequence': {
                    required: 'Svp Entrez la consÃ©quence du réclamation'
                },
 				'resp': {
                    required: 'Svp Entrez le nom du responsable',
                    minlength: 'Le nom doit contenir au moin 3 caractres',
                },     
                 'action': {
                    required: 'Svp Entrez une action à  faire',
                    minlength: 'Ce champ doit avoir au moins 3 caracteres',
                },
                 'solution': {
                    required: 'Svp Entrez la solution à faire',
                    minlength: 'Ce champ doit avoir au moins 3 caracteres',
                },  
                 'efficacite': {
                    required: 'Svp Entrez l\'efficacité',
                    minlength: 'Ce champ doit avoir au moins 3 caracteres',
                },
                 'processus': {
                    required: 'Svp choisir le processus à établir'
                },
                 'echeance': {
                    required: 'Svp Entrez une échéance',
                    minlength: 'Ce champ doit avoir au moins 3 caracteres',
                },
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
 *//**
 * 
 */