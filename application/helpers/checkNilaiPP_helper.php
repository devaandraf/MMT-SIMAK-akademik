<?php defined('BASEPATH') OR exit('No direct script access allowed');

function getGradeNilaiPP($nilai)
{

    if ($nilai >= 100 && $nilai <= 139) {
        $grade = 'A';
    } elseif ($nilai >= 80 && $nilai <= 100) {
        $grade = 'B';
    } elseif ($nilai >= 50 && $nilai <= 80) {
        $grade = 'C';
    } elseif ($nilai >= 0 && $nilai <= 50) {
        $grade = 'D';
    } else {
        $grade = 'Invalid';
    }


return $grade;
}

function getGradeNilaiPP2($nilai)
{

    if ($nilai >= 100 && $nilai <= 139) {
        $grade = '100';
    } elseif ($nilai >= 80 && $nilai <= 100) {
        $grade = '90';
    } elseif ($nilai >= 50 && $nilai <= 80) {
        $grade = '80';
    } elseif ($nilai >= 0 && $nilai <= 50) {
        $grade = '75';
    } else {
        $grade = 'Invalid';
    }


return $grade;
}

function getGradeNilaiPPKat($nilai)
{

    if ($nilai = 9 && $nilai <= 46) {
        $grade = '100';
    } elseif ($nilai >= 6 && $nilai <= 8) {
        $grade = '90';
    } elseif ($nilai >= 4 && $nilai <= 6) {
        $grade = '80';
    } elseif ($nilai >= 0 && $nilai <= 4) {
        $grade = '75';
    } else {
        $grade = 'Invalid';
    }


return $grade;
}

function getGradeNilaiPPKat2($nilai)
{

    if ($nilai = 9 && $nilai <= 46) {
        $grade = 'A';
    } elseif ($nilai >= 6 && $nilai <= 8) {
        $grade = 'B';
    } elseif ($nilai >= 4 && $nilai <= 6) {
        $grade = 'C';
    } elseif ($nilai >= 0 && $nilai <= 4) {
        $grade = 'D';
    } else {
        $grade = 'Invalid';
    }


return $grade;
}


function getGradeNilaiPPPer($nilai)
{

    if ($nilai >= 8 && $nilai <= 10) {
        $grade = '100';
    } elseif ($nilai >= 6 && $nilai <= 8) {
        $grade = '90';
    } elseif ($nilai >= 4 && $nilai <= 6) {
        $grade = '80';
    } elseif ($nilai >= 0 && $nilai <= 4) {
        $grade = '75';
    } else {
        $grade = 'Invalid';
    }


return $grade;
}

function getGradeNilaiPPPer2($nilai)
{

    if ($nilai >= 8 && $nilai <= 10) {
        $grade = 'A';
    } elseif ($nilai >= 6 && $nilai <= 8) {
        $grade = 'B';
    } elseif ($nilai >= 4 && $nilai <= 6) {
        $grade = 'C';
    } elseif ($nilai >= 0 && $nilai <= 4) {
        $grade = 'D';
    } else {
        $grade = 'Invalid';
    }


return $grade;
}