<?php

class PembiasaanForm_model extends CI_Model 
{

    public function insert_data($data_form, $data_jawaban) 
    {
        $this->db->trans_begin();

        // Insert data_form
        $this->db->insert('pembiasaan_form', $data_form);
        $form_id = $this->db->insert_id();

        // Insert data_jawaban
        foreach ($data_jawaban as $jawaban) {
            $jawaban['form_habit_id'] = $form_id;
            $this->db->insert('jawaban_pembiasaan', $jawaban);
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

    public function deleteHabit($id) 
    {
        $this->db->where('id', $id);
        $this->db->delete('pembiasaan_form');

        return $this->db->affected_rows();
    }

}