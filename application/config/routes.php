<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

// default
$route['default_controller']        = 'dashboard';
$route['404_override']              = '';
$route['translate_uri_dashes']      = FALSE;

// master
$route['master/data_profil']  = 'profil/index';
$route['master/input/input_profil']  = 'profil/tambah_profil';
$route['master/data_profil/hapus/(:any)'] = 'profil/hapus_dataPP/$1';
$route['master/submit/submit_profil']  = 'profil/submit_formPP';
$route['master/data_santri']        = 'data_santri/index';
$route['master/data_santri/tambah']        = 'Data_santri/tambah_data';
$route['master/data_santri/hapus/(:any)'] = 'Data_santri/hapus_data/$1';
$route['master/data_santri/ubah_data'] = 'Data_santri/ubah_data';

// penilaian
$route["penilaian/tahfidz"]   = 'tahfidz/index';
$route['penilaian/tahfidz/tambah']        = 'Tahfidz/tambah_data';
$route["penilaian/tahfidz/riwayat_tahfidz"]   = 'tahfidz/riwayat_tahfidz';
$route["penilaian/tahsin"]   = 'tahsin/index';
$route['penilaian/tahsin/tambah']        = 'tahsin/tambah_data';
$route["penilaian/tahsin/riwayat_tahsin"]   = 'tahsin/riwayat_tahsin';
$route["penilaian/penilaian_habit"]   = 'penilaian_habit/index';
$route["penilaian/rekap_nilai"]   = 'penilaian_habit/rekap_nilai';
$route["penilaian/progress"]   = 'penilaian_habit/progress';
$route["penilaian/cetak_raport"]   = 'penilaian_habit/cetak_raport';
$route["penilaian/cetak_raport_siswa/(:any)"]   = 'penilaian_habit/cetak_raport_siswa/$1';
$route["penilaian/dataChart/(:any)"]   = 'penilaian_habit/dataChart/$1';
$route["penilaian/dataChart2/(:any)"]   = 'penilaian_habit/dataChart2/$1';
$route["penilaian/penilaian_habit/hapus/(:any)"]   = 'penilaian_habit/hapus_dataHabit/$1';
$route["penilaian/input/input_habit"]   = 'penilaian_habit/tambah_habit';
$route["penilaian/submit/submit_habit"]   = 'penilaian_habit/submit_form';
$route["penilaian/penilaian_tahfidz"]   = 'penilaian_tahfidz/index';
$route["penilaian/penilaian_tahsin"]   = 'penilaian_tahsin/index';

// laporan
$route["laporan/rekap_nilai"] = "rekap_nilai/index";
$route["laporan/progress"]  = "progress/index";
// $route["laporan/riwayat_tahfidz"]  	 = "riwayat_tahfidz/index";
$route["laporan/riwayat_tahsin"]     = "riwayat_tahsin/index";
