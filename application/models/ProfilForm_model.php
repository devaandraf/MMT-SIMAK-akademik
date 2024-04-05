<?php

class ProfilForm_model extends CI_Model 
{

    public function insert_data($data_form, $data_jawaban) 

    {

        // var_dump($data_form, $data_jawaban);
        // die;

        $this->db->trans_begin();

        // Insert data_form
        $this->db->insert('profil_form', $data_form);
        $form_id = $this->db->insert_id();

        // Insert data_jawaban
        foreach ($data_jawaban as $jawaban) {
            $jawaban['form_profil_id'] = $form_id;
            $this->db->insert('jawaban_profil', $jawaban);
        }

        if ($this->db->trans_status() === FALSE)
        {
                $this->db->trans_rollback();
                return 0;
        }
        else
        {
                $this->db->trans_commit();
                return 1;
        }
    }

    public function deleteProfil($id) 
    {
        $this->db->where('id', $id);
        $this->db->delete('profil_form');

        return $this->db->affected_rows();
    }

    public function cekDuplikat($wkt_input){

        // $formattedDate = date('Y-m', strtotime($wkt_input));

        $this->db->select('COUNT(id) as total');
        $this->db->from('profil_form');
        $this->db->where('DATE_FORMAT(wkt_input, "%Y-%m") = ', $wkt_input);
        $query = $this->db->get();

        $result = $query->row_array();
        

        if ($result['total'] > 0) {
            return false; // Ada duplikat
        } else {
            return true; // Tidak ada duplikat
        }

    }

    // public function cekDuplikat($wkt_input) {
    //     if (!empty($wkt_input) && strtotime($wkt_input) !== false) {
    //         $formattedDate = date('Y-m', strtotime($wkt_input));
    //         $this->db->select('COUNT(id) as total');
    //         $this->db->from('profil_form');
    //         $this->db->where('DATE_FORMAT(wkt_input, "%Y-%m") = ', $formattedDate);
    //         $query = $this->db->get();
    //         $result = $query->row_array();
    
    //         return $result['total'] > 0; // Mengembalikan true jika ada duplikat, false jika tidak
    //     } else {
    //         // Tindakan jika tanggal kosong atau tidak valid
    //         return false;
    //     }
    // }

}