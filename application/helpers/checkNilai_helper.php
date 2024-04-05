<?php defined('BASEPATH') OR exit('No direct script access allowed');

function getGradeNilai($nilai)
{
    

    if ($nilai = 8 && $nilai <= 15) {
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

function getGradeNilai2($nilai)
{
    

    if ($nilai = 8 && $nilai <= 15) {
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

function getGradeNilaiTotal($nilai)
{
    

    if ($nilai = 33 && $nilai <= 42) {
        $grade = '100';
    } elseif ($nilai >= 21 && $nilai <= 32) {
        $grade = '90';
    } elseif ($nilai >= 10 && $nilai <= 21) {
        $grade = '80';
    } elseif ($nilai >= 0 && $nilai <= 10) {
        $grade = '75';
    } else {
        $grade = 'Invalid';
    }
return $grade;
}

function getGradeNilaiTotal2($nilai)
{
    

    if ($nilai = 33 && $nilai <= 42) {
        $grade = 'A';
    } elseif ($nilai >= 21 && $nilai <= 32) {
        $grade = 'B';
    } elseif ($nilai >= 10 && $nilai <= 21) {
        $grade = 'C';
    } elseif ($nilai >= 0 && $nilai <= 10) {
        $grade = 'D';
    } else {
        $grade = 'Invalid';
    }
return $grade;
}

function getGradeNilaiPer($nilai)
{ 

    if ($nilai = 3 && $nilai <= 4) {
        $grade = 'A';
    } elseif ($nilai = 2) {
        $grade = 'B';
    } elseif ($nilai = 1) {
        $grade = 'C';
    } elseif ($nilai = 0) {
        $grade = 'D';
    } else {
        $grade = 'Invalid';
    }
return $grade;
}

function getGradeNilaiPer2($nilai)
{ 

    if ($nilai = 3 && $nilai <= 4) {
        $grade = '100';
    } elseif ($nilai = 2) {
        $grade = '90';
    } elseif ($nilai = 1) {
        $grade = '80';
    } elseif ($nilai = 0) {
        $grade = '75';
    } else {
        $grade = 'Invalid';
    }
return $grade;
}