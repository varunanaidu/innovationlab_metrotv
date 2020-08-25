<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<script type="text/javascript">var base_url = '<?= base_url(); ?>'</script>
<!-- JS here -->
<script src="<?= base_url(); ?>assets/design/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/vendor/jquery-1.12.4.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/popper.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/bootstrap.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/owl.carousel.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/isotope.pkgd.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/ajax-form.js"></script>
<script src="<?= base_url(); ?>assets/design/js/waypoints.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.counterup.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/imagesloaded.pkgd.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/scrollIt.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.scrollUp.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/wow.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/nice-select.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.slicknav.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.magnific-popup.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/plugins.js"></script>
<script src="<?= base_url(); ?>assets/design/js/gijgo.min.js"></script>


<!-- DataTables -->
<script src="<?php echo base_url(); ?>assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>

<!-- Sweetalert -->
<script src="<?= base_url(); ?>assets/plugins/sweetalert2/sweetalert2.min.js"></script>

<!--contact js-->
<script src="<?= base_url(); ?>assets/design/js/contact.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.ajaxchimp.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.form.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.validate.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/mail-script.js"></script>

<script src="<?= base_url(); ?>assets/design/js/main.js"></script>
<!-- Page Script -->
<?php 
if (isset($js)) {
	?>
	<script src="<?= $js ?>"></script>
	<?php 
}
if (isset($js2)) {
	for ( $i = 0 ; $i < sizeof($js2); $i++) { 
		?>
		<script src="<?= $js2[$i] ?>" ></script>
		<?php
	}
}
?>
</body>
</html>