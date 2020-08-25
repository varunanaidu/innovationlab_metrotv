<?php if ( !defined('BASEPATH') )exit('No direct script access allowed');?>
<!Doctype html>
<html lang="en">
<head>
	<?php
	ini_set('memory_limit','-1');
		// file name for download
	// $filename = "Report_" . date('d F Y') . ".xls";
	$filename = "Report_" . date('d_F_Y') . ".xls";

	header("Content-Disposition: attachment; filename=\"$filename\"");
	header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	?>
	<title>Report Global</title>
	<style type="text/css">
		table, th, td{
			border: 1px solid black;
		}
	</style>
</head>
<body>
	<table style="width: 100%">
		<tr>
			<th>No</th>
			<th>Idea</th>
			<th>BOD Challenge</th>
			<th>Summary</th>
			<th>Detail</th>
			<th>Author</th>
			<th>Date Created</th>
		</tr>
		<?php 
		if (isset($data) and $data != 0) {
			$a = 1;
			foreach ($data as $row) {
				?>
				<tr>
					<td><?= $a; ?></td>
					<td><?= $row->idea_subject; ?></td>
					<td><?= $row->challenge_name; ?></td>
					<td><?= $row->idea_desc; ?></td>
					<td><?= $row->idea_detail; ?></td>
					<td><?= $row->created_name; ?></td>
					<td><?= date('d F Y H:i:s', strtotime($row->created_date)); ?></td>
				</tr>
				<?php 
				$a++;
			}
		}
		?>
	</table>
</body>
</html>
