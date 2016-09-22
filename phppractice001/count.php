
<?php




function hit_counter() {

$ip_address = $_SERVER['REMOTE_ADDR'];

		$ip_file =file('ip.txt');

		foreach ($ip_file as $ip) {

			$ip_single = trim($ip);

			if ($ip_address==$ip_single) {

				$found = true;
				break;
				} else {


					$found = false;
					break;
					}

			}

			if ($found==false) {

			$filename = 'count.txt';
			$handle =fopen ($filename, 'r');
			$current =fread($handle, filesize($filename));
			echo $current;
			fclose($handle);

				}
	}


?>
