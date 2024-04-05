<!-- Vendor JS -->
<script src="<?= base_url() ?>assets/template/main/js/vendors.min.js"></script>
<script src="<?= base_url() ?>assets/template/main/js/pages/chat-popup.js"></script>
<script src="<?= base_url() ?>assets/template/assets/icons/feather-icons/feather.min.js"></script>

<script src="<?= base_url() ?>assets/template/assets/vendor_components/sweetalert/sweetalert.min.js"></script>
<script src="<?= base_url() ?>assets/template/assets/vendor_components/sweetalert/jquery.sweet-alert.custom.js"></script>
<script src="<?= base_url() ?>assets/template/assets/vendor_components/apexcharts-bundle/dist/apexcharts.js"></script>
<script src="<?= base_url() ?>assets/template/assets/vendor_components/moment/min/moment.min.js"></script>
<script src="<?= base_url() ?>assets/template/assets/vendor_components/fullcalendar/fullcalendar.js"></script>

<!-- EduAdmin App -->
<script src="<?= base_url() ?>assets/template/main/js/jquery.smartmenus.js"></script>
<script src="<?= base_url() ?>assets/template/main/js/menus.js"></script>
<script src="<?= base_url() ?>assets/template/main/js/template.js"></script>
<script src="<?= base_url() ?>assets/template/main/js/pages/dashboard.js"></script>
<script src="<?= base_url() ?>assets/template/main/js/pages/calendar.js"></script>

<script src="<?= base_url() ?>assets/template/main/js/pages/data-table.js"></script>
<script src="<?= base_url() ?>assets/template/assets/vendor_components/datatable/datatables.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    // In your Javascript (external .js resource or <script> tag)
    $(document).ready(function() {
        $('.js-example-basic-single').select2();
    });

    $('.js-example-basic-single').select2({
        dropdownParent: $('#modalInputTahfidz')
    });
</script>


</body>

</html>