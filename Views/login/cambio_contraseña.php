<!DOCTYPE html>
<!--
Author: Keenthemes
Product Name: Metronic
Product Version: 8.2.0
Purchase: https://1.envato.market/EA4JP
Website: http://www.keenthemes.com
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
License: For each use you must have a valid license purchased only from above link in order to legally use the theme for your project.
-->
<html lang="en">
<!--begin::Head-->

<head>
    <base href="" />
    <title>UPAM - Vinculación</title>
    <meta charset="utf-8" />
    <meta name="description" content="The most advanced Bootstrap 5 Admin Theme with 40 unique prebuilt layouts on Themeforest trusted by 100,000 beginners and professionals. Multi-demo, Dark Mode, RTL support and complete React, Angular, Vue, Asp.Net Core, Rails, Spring, Blazor, Django, Express.js, Node.js, Flask, Symfony & Laravel versions. Grab your copy now and get life-time updates for free." />
    <meta name="keywords" content="metronic, bootstrap, bootstrap 5, angular, VueJs, React, Asp.Net Core, Rails, Spring, Blazor, Django, Express.js, Node.js, Flask, Symfony & Laravel starter kits, admin themes, web design, figma, web development, free templates, free admin themes, bootstrap theme, bootstrap template, bootstrap dashboard, bootstrap dak mode, bootstrap button, bootstrap datepicker, bootstrap timepicker, fullcalendar, datatables, flaticon" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="Metronic - Bootstrap Admin Template, HTML, VueJS, React, Angular. Laravel, Asp.Net Core, Ruby on Rails, Spring Boot, Blazor, Django, Express.js, Node.js, Flask Admin Dashboard Theme & Template" />
    <meta property="og:url" content="https://keenthemes.com/metronic" />
    <meta property="og:site_name" content="Keenthemes | Metronic" />
    <link rel="canonical" href="https://preview.keenthemes.com/metronic8" />
    <link rel="shortcut icon" href="assets/media/logos/upam.ico" />
    <!--begin::Fonts(mandatory for all pages)-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
    <!--end::Fonts-->
    <!--begin::Vendor Stylesheets(used for this page only)-->
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Vendor Stylesheets-->
    <!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
    <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.bundle_2.css" rel="stylesheet" type="text/css" />
    <!--end::Global Stylesheets Bundle-->
    <script>
        // Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_app_body" data-kt-app-header-fixed-mobile="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <!--begin::Theme mode setup on page load-->
    <script>
        var defaultThemeMode = "light";
        var themeMode;
        if (document.documentElement) {
            if (document.documentElement.hasAttribute("data-bs-theme-mode")) {
                themeMode = document.documentElement.getAttribute("data-bs-theme-mode");
            } else {
                if (localStorage.getItem("data-bs-theme") !== null) {
                    themeMode = localStorage.getItem("data-bs-theme");
                } else {
                    themeMode = defaultThemeMode;
                }
            }
            if (themeMode === "system") {
                themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light";
            }
            document.documentElement.setAttribute("data-bs-theme", themeMode);
        }
    </script>
    <!--end::Theme mode setup on page load-->
    <!--begin::App-->
    <div class="d-flex flex-column flex-root app-root" id="kt_app_root">
        <!--begin::Page-->
        <div class="app-page flex-column flex-column-fluid" id="kt_app_page">
            <!--begin::Header-->
            <?php include 'header.php'; ?>
            <!--end::Header-->
            <!--begin::Wrapper-->
            <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                <!--begin::Toolbar-->
                <div id="kt_app_toolbar" class="app-toolbar py-6">
                    <!--begin::Toolbar container-->
                    <div id="kt_app_toolbar_container" class="app-container container-xxl d-flex align-items-start">
                        <!--begin::Toolbar container-->
                        <div class="d-flex flex-column flex-row-fluid">

                        </div>
                        <!--end::Toolbar container=-->
                    </div>
                    <!--end::Toolbar container-->
                </div>
                <!--end::Toolbar-->
                <!--begin::Wrapper container-->
                <div class="app-container container-xxl">
                    <!--begin::Main-->
                    <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
                        <!--begin::Content wrapper-->
                        <div class="d-flex flex-column flex-column-fluid">
                            <!--begin::Content-->
                            <div id="kt_app_content" class="app-content">
                                <form id="actualizarContraseñaForm">
                                    <!-- Campo oculto para el idUsuario -->
                                    <input type="hidden" name="idUsuario" value="<?php echo $idUsuario; ?>">

                                    <!-- Nuevos campos para la contraseña -->
                                    <div class="col-lg-8">
                                        <!--begin::Row-->
                                        <div class="row">
                                            <!--begin::Col-->
                                            <div class="col-lg-6 fv-row" style="margin-left:50%;">
                                                <label style="font-size: 140%;" for="nueva_contraseña">Nueva Contraseña:</label>
                                                <input type="password" name="nueva_contraseña" id="nueva_contraseña" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" required />
                                            </div>
                                            <!--end::Col-->
                                        </div>
                                        <!--end::Row-->
                                    </div>
                                    <br>
                                    <div class="col-lg-8">
                                        <!--begin::Row-->
                                        <div class="row">
                                            <!--begin::Col-->
                                            <div class="col-lg-6 fv-row" style="margin-left:50%;">
                                                <label style="font-size: 140%;" for="confirmar_contraseña">Confirmar Contraseña:</label>
                                                <input type="password" name="confirmar_contraseña" id="confirmar_contraseña" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" required />
                                            </div>
                                            <!--end::Col-->
                                        </div>
                                        <!--end::Row-->
                                    </div>
                                    <br>
                                    <div class="d-flex justify-content-between align-items-start flex-wrap mb-2" style="margin-left:45%;">
                                        <button id="actualizarContraseñaBtn" class="btn btn-sm btn-primary me-3" type="button">Actualizar Contraseña</button>
                                    </div>
                                </form>

                                <script>
                                    $(document).ready(function() {
                                        $('#actualizarContraseñaBtn').click(function() {
                                            var nuevaContraseña = $('#nueva_contraseña').val().trim();
                                            var confirmarContraseña = $('#confirmar_contraseña').val().trim();

                                            // Verificar si las contraseñas coinciden
                                            if (nuevaContraseña !== confirmarContraseña) {
                                                // Las contraseñas no coinciden, muestra una alerta de error
                                                Swal.fire({
                                                    title: 'Error',
                                                    text: 'Las contraseñas no coinciden. Por favor, inténtelo de nuevo.',
                                                    icon: 'error'
                                                });
                                                return; // Detiene la ejecución
                                            }

                                            var formData = $('#actualizarContraseñaForm').serialize(); // Serializa los datos del formulario

                                            // Envía la solicitud AJAX para actualizar la contraseña
                                            $.ajax({
                                                type: 'POST',
                                                url: 'index.php?c=rcontraseña&a=actualizar_contraseña',
                                                data: formData,
                                                dataType: 'json',
                                                success: function(response) {
                                                    if (response.status === 'success') {
                                                        // La actualización de la contraseña fue exitosa
                                                        Swal.fire({
                                                            title: 'Éxito',
                                                            text: '¡Actualización de contraseña exitosa!',
                                                            icon: 'success'
                                                        }).then((result) => {
                                                            // Redirige a index.php después de hacer clic en OK en la alerta
                                                            window.location.href = 'index.php';
                                                        });
                                                    } else {
                                                        // La actualización de la contraseña no fue exitosa
                                                        Swal.fire({
                                                            title: 'Error',
                                                            text: response.message,
                                                            icon: 'error'
                                                        });
                                                    }
                                                },
                                                error: function(xhr, status, error) {
                                                    // Ocurrió un error en la solicitud AJAX
                                                    console.error('Error en la solicitud AJAX: ' + error);
                                                    // Muestra una alerta de error genérica
                                                    Swal.fire({
                                                        title: 'Error',
                                                        text: 'Hubo un error al actualizar la contraseña. Por favor, inténtelo de nuevo más tarde.',
                                                        icon: 'error'
                                                    });
                                                }
                                            });
                                        });
                                    });
                                </script>



                            </div>
                            <!--end::Content-->
                        </div>
                        <!--end::Content wrapper-->
                        <!--begin::Footer-->
                        <?php include 'footer.php'; ?>
                        <!--end::Footer-->
                    </div>
                    <!--end:::Main-->
                </div>
                <!--end::Wrapper container-->
            </div>
            <!--end::Wrapper-->
        </div>
        <!--end::Page-->
    </div>
    <!--end::App-->

    <!--begin::Modal - Offer A Deal-->

    <!--end::Modal - Offer A Deal-->
    <!--begin::Javascript-->
    <script>
        var hostUrl = "assets/";
    </script>
    <!--begin::Global Javascript Bundle(mandatory for all pages)-->
    <script src="assets/plugins/global/plugins.bundle.js"></script>
    <script src="assets/js/scripts.bundle.js"></script>
    <!--end::Global Javascript Bundle-->
    <!--begin::Vendors Javascript(used for this page only)-->
    <script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
    <!--end::Vendors Javascript-->
    <!--begin::Custom Javascript(used for this page only)-->
    <script src="assets/js/custom/pages/user-profile/general.js"></script>
    <script src="assets/js/custom/account/referrals/referral-program.js"></script>
    <script src="assets/js/widgets.bundle.js"></script>
    <script src="assets/js/custom/widgets.js"></script>
    <script src="assets/js/custom/apps/chat/chat.js"></script>
    <script src="assets/js/custom/utilities/modals/upgrade-plan.js"></script>
    <script src="assets/js/custom/utilities/modals/offer-a-deal/type.js"></script>
    <script src="assets/js/custom/utilities/modals/offer-a-deal/details.js"></script>
    <script src="assets/js/custom/utilities/modals/offer-a-deal/finance.js"></script>
    <script src="assets/js/custom/utilities/modals/offer-a-deal/complete.js"></script>
    <script src="assets/js/custom/utilities/modals/offer-a-deal/main.js"></script>
    <script src="assets/js/custom/utilities/modals/users-search.js"></script>
    <!--end::Custom Javascript-->
    <!--end::Javascript-->
</body>
<!--end::Body-->

</html>